Sequel.migration do
  change do
    create_table(:charities) do
      primary_key :id
      String :name
      String :cause
      Integer :funding_goal
    end
  end
end