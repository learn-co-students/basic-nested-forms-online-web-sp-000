class Address < ActiveRecord::Base
  belongs_to :person
  string :street_address_1
  string :street_address_2
  string :city
  string :state
  string :zipcode
  string :address_type
end
