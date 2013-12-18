Sequel.migration do
  create do
    create_table(:charities) do
      primary key :id
      String :name
      String :cause
      Integer :funding_goal
    end
  end
end