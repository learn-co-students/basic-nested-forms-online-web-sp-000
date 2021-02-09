class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses
  #cannot use this when we need the row values to be unique
  #See forms_and_basic_associations lab and the difference between artist_name values and notes values
end
