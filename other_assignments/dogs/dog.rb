# CREATE TABLE dogs
# (id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
# name TEXT,
# color TEXT);

require 'mysql2'
require 'debugger'
 
class Dog
  attr_accessor :name, :color, :id
  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize(name, color)
    @name = name
    @color = color
  end

  def db
    @@db
  end

  def self.db
    @@db
  end

  def mark_saved!
    self.id = self.db.last_id if db.last_id > 0
    self
  end

  def insert
    self.db.query("INSERT INTO dogs (name, color) VALUE ('#{self.name}', '#{self.color}');")
    mark_saved!
  end

  def update
    self.db.query("UPDATE dogs SET name = '#{self.name}', color = '#{self.color}' WHERE id = #{self.id};")
    mark_saved!
  end

  def self.row_to_obj(row)
    dog_obj = Dog.new(row["name"], row["color"])
    dog_obj.id = row["id"]
    dog_obj
  end

  def self.find(id)
    dog_row = self.db.query("SELECT * FROM dogs WHERE dogs.id = #{id};").first
    row_to_obj(dog_row)
  end

  def self.find_by_name(name)
    results = []
    self.db.query("SELECT * FROM dogs WHERE dogs.name = '#{name}';").each do |dog_row|
      results << row_to_obj(dog_row)
    end
    results
  end

  def self.find_by_color(color)
    results = []
    self.db.query("SELECT * FROM dogs WHERE dogs.color = '#{color}';").each do |dog_row|
      results << row_to_obj(dog_row)
    end
    results
  end

  def delete
    self.db.query("DELETE FROM dogs WHERE id = #{self.id};")
  end

  def saved?
    self.id
  end

  def unsaved?
    !saved?
  end

  def save!
    saved? ? update : insert
  end

  def ==(other_dog)
    self.id == other_dog.id
  end

  def inspect
    string = "Woof! My name is #{self.name}. Pet my shiny #{self.color} coat! Please! "
    saved? ? string += "My id is #{self.id}." : string += "I'm not in the database yet!"
  end

  def attributes
    string = "Name: #{self.name}  Color: #{self.color}  "
    saved? ? string += "ID: #{self.id}" : string += "ID: none"
  end

  def self.start_over
    db.query("DROP TABLE dogs")
    db.query("CREATE TABLE dogs
    (id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name TEXT,
    color TEXT);")
    db.query("SELECT * FROM dogs")
  end

  def reload
    dog = Dog.find(self.id)
  end
 
end
 
 
