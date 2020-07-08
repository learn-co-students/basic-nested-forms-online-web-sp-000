class Person < ActiveRecord::Base
  has_many :addresses
  string :name
end
