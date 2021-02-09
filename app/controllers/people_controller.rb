class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.addresses.build(address_type: "work")
    @person.addresses.build(address_type: "home")
    #Hooks up to the fields for @addreses entries?
    #Note the address_type field is already autopopulated with the values we gave it in the 'build'
  end

  def create    
    Person.create(person_params)
    redirect_to people_path
  end

  def index
    @people = Person.all
  end

  private

  def person_params
    params.require(:person).permit(:name, addresses_attributes: [:street_address_1, :street_address_2, :city, :state, :zipcode, :address_type])
  end
end
