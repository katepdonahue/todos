require './dog'

Dog.db.query("DROP TABLE dogs")
Dog.db.query("CREATE TABLE dogs
(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
name TEXT,
color TEXT);")


describe Dog do
  
  describe "#insert" do
    it "should insert a dog object into the database" do
      dog1 = Dog.new("Spot", "Gray")
      dog1.insert
      sql_command = "SELECT * FROM dogs WHERE dogs.name = '#{dog1.name}';"
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
      dog1 = Dog.new("Pasta Batman", "Gray")
      dog1.insert
      dog2 = Dog.find_by_name("Pasta Batman") #so it gets an id
      dog2.delete
      sql_query = "SELECT * FROM dogs WHERE id = #{dog2.id}"
      expect(Dog.db.query(sql_query).first).to be_nil
    end
  end


end