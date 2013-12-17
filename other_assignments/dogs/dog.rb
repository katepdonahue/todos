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

  def insert
    self.db.query("INSERT INTO dogs (name, color) VALUE ('#{self.name}', '#{self.color}');")
  end

  def update
    self.db.query("UPDATE dogs SET name = '#{self.name}', color = '#{self.color}' WHERE id = #{self.id};")
  end

  def self.find(id)
    dog_row = self.db.query("SELECT * FROM dogs WHERE dogs.id = #{id};").first
    dog_obj = Dog.new(dog_row["name"], dog_row["color"])
    dog_obj.id = id
    dog_obj
  end

  def self.find_by_name(name)
    dog_row = self.db.query("SELECT * FROM dogs WHERE dogs.name = '#{name}';").first
    dog_obj = Dog.new(dog_row["name"], dog_row["color"])
    dog_obj.id = dog_row["id"]
    dog_obj
  end

  def self.find_by_color(color)
  end

  def db
    @@db
  end

  def self.db
    @@db
  end
 
end
 
# dog1 = Dog.new("Spot", "Gray")
# dog1.insert
# debugger
# dog1.name = "Pie"
# dog1.update
# dog2 = Dog.find(1)
# debugger
# puts 'hi'
 
  # color, name, id
  # db
  # find_by_att
  # find
  # insert
  # update
  # delete/destroy
 
  # refactorings?
  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?
  # mark_saved!
  # ==
  # inspect
  # reload
  # attributes