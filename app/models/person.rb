class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses #addresses_attributes method that was created for us by accepts_nested_attributes_for.
end
# when we called new_person.save it created both the Person object and the two Address objects.