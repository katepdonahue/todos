Sequel.migration do
  change do
    add_column :charities, :gender, String
  end
end