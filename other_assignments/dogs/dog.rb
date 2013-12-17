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

  def insert
    self.db.query("INSERT INTO dogs (name, color) VALUE ('#{self.name}', '#{self.color}');")
  end

  def update
    self.db.query("UPDATE dogs SET name = '#{self.name}', color = '#{self.color}' WHERE id = #{self.id};")
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
 
end
 
 
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