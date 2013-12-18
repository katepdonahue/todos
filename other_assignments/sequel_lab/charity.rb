require 'sequel'

DB = Sequel.connect('sqlite://charities.db')

class Charity < Sequel::Model
end