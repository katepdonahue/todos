require './dog'

Dog.db.query("DROP TABLE dogs")
Dog.db.query("CREATE TABLE dogs
(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
name TEXT,
color TEXT);")


describe Dog do
  
  describe "#insert" do
    it "should insert a dog object into the database" do
      dog1 = Dog.new("Spot", "Gray").insert
      sql_command = "SELECT * FROM dogs WHERE name = '#{dog1.name}';"
      row_hash = {"id" => 1, "name" => "Spot", "color" => "Gray"}
      expect(Dog.db.query(sql_command).first).to eq(row_hash)
    end
  end

  describe "#find" do
    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find(1).id).to eq(1)
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find(1).name).to eq("Spot")
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find(1).color).to eq("Gray")
    end
  end

  describe "#update" do
    it "should insert a dog object into the database" do
      dog1 = Dog.find(1)
      dog1.name = "Pie"
      dog1.update
      expect(Dog.find(1).name).to eq("Pie")
    end
  end

  describe "#find_by_name" do
    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_name("Pie").id).to eq(1)
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_name("Pie").name).to eq("Pie")
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_name("Pie").color).to eq("Gray")
    end
  end

  describe "#find_by_color" do
    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_color("Gray").id).to eq(1)
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_color("Gray").name).to eq("Pie")
    end

    it "should find a dog in the database and return it as a dog object" do
      expect(Dog.find_by_color("Gray").color).to eq("Gray")
    end
  end

  describe "#delete" do
    it "should delete the dog from the database" do
      dog1 = Dog.new("Pasta Batman", "Gray").insert
      dog1.delete
      sql_query = "SELECT * FROM dogs WHERE id = #{dog1.id}"
      expect(Dog.db.query(sql_query).first).to be_nil
    end
  end

  describe "#saved?" do
    it "should return true when the dog is already in the database" do
      dog1 = Dog.new("Sophie", "Spotted")
      expect(dog1.insert.saved?).to be_true
    end
    it "should return false when the dog is not yet in the database" do
      dog1 = Dog.new("Pup", "Tan")
      expect(dog1.saved?).to be_false
    end
  end

  describe "#save!" do
    it "should insert a dog object into the database if it's not already there" do
      dog1 = Dog.new("Curly", "Brown").save!
      dog2 = Dog.find_by_name("Curly")
      sql_command = "SELECT * FROM dogs WHERE id = '#{dog2.id}';"
      row_hash = {"id" => dog2.id, "name" => "Curly", "color" => "Brown"}
      expect(Dog.db.query(sql_command).first).to eq(row_hash)
    end
    it "should update a dog object in the database if it is already there" do
      dog1 = Dog.new("Unicorn", "Blue").insert
      dog1.color = "Pink"
      dog1.save!
      dog2 = Dog.find_by_name("Unicorn")
      sql_command = "SELECT * FROM dogs WHERE id = '#{dog2.id}';"
      row_hash = {"id" => dog2.id, "name" => "Unicorn", "color" => "Pink"}
      expect(Dog.db.query(sql_command).first).to eq(row_hash)
    end
  end

  describe "#==" do
    it "should check if two dogs are the same by comparing their ids" do
      dog1 = Dog.new("Corn", "Blue").insert
      dog1.color = "White"
      dog2 = dog1.update
      expect(dog1 == dog2).to be_true
    end
    it "should check if two dogs are the same by comparing their ids" do
      dog1 = Dog.new("Corn", "Blue").insert
      dog2 = Dog.new("Corn", "Blue").insert
      expect(dog1 == dog2).to be_false
    end
  end

  describe "#inspect" do
    it "should return our own string instead of ruby's built in inspect method" do
      dog1 = Dog.new("Salad", "Black").insert
      expect(dog1.inspect).to eq("Woof! My name is Salad. Pet my shiny Black coat! Please! My id is #{dog1.id}.")
    end
    it "should return our own string instead of ruby's built in inspect method" do
      dog1 = Dog.new("Salad", "Black")
      expect(dog1.inspect).to eq("Woof! My name is Salad. Pet my shiny Black coat! Please! I'm not in the database yet!")
    end
  end

  describe "#attributes" do
    it "should return the dog's attributes with an id if they have one" do
      dog1 = Dog.new("Salad", "Black").insert
      expect(dog1.attributes).to eq("Name: Salad  Color: Black  ID: #{dog1.id}")
    end
    it "should return the dog's attributes without an id if they don't have one" do
      dog1 = Dog.new("Salad", "Black")
      expect(dog1.attributes).to eq("Name: Salad  Color: Black  ID: none")
    end
  end

  describe "#reload" do
    it "should empty the dogs table" do
      expect(Dog.reload.first).to be_nil
    end
  end
end

# describe "#find_by_name" do
#     dog1 = Dog.new("Canada", "Gray").insert
#     dog2 = Dog.new("Canada", "Orange").insert
#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[0].id).to eq(dog1.id)
#     end

#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[0].name).to eq("Canada")
#     end

#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[0].color).to eq("Gray")
#     end
#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[1].id).to eq(dog2.id)
#     end

#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[1].name).to eq("Canada")
#     end

#     it "should find an array of dog objects with the name" do
#       expect(Dog.find_by_name("Canada")[1].color).to eq("Orange")
#     end
#   end