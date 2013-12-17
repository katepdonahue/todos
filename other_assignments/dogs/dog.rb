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
    self.id = self.db.last_id
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
    dog_row = self.db.query("SELECT * FROM dogs WHERE dogs.name = '#{name}';").first
    row_to_obj(dog_row)
  end

  def self.find_by_color(color)
    dog_row = self.db.query("SELECT * FROM dogs WHERE dogs.color = '#{color}';").first
    row_to_obj(dog_row)
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
    if saved?
      "Woof! My name is #{self.name}. Pet my shiny #{self.color} coat! Please! My id is #{self.id}."
    else
      "Woof! My name is #{self.name}. Pet my shiny #{self.color} coat! Please! I'm not in the database yet!"
    end
  end

  def attributes
  end
 
end
 
 
 
  # new_from_db
  # reload
  # attributes