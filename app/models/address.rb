class Address < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addressesend
