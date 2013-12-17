require './dog'

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
    # it "should insert a dog object into the database" do
    #   dog1.update
    #   sql_command = "SELECT * FROM dogs WHERE dogs.name = '#{dog1.name}';"
    #   row_hash = {"id" => 1, "name" => "Spot", "color" => "Gray"}
    #   expect(Dog.db.query(sql_command).first).to eq(row_hash)
    # end
  end

  describe "#find_by_name" do

  end

  describe "#find_by_color" do

  end


end