class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.addresses.build(address_type: 'work')
    @person.addresses.build(address_type: 'home')

  end

  def create    
    
    Person.create(person_params(person_keys, address_keys))
      debugger
    redirect_to people_path
  end

  def index
    @people = Person.all
  end

  private

  def person_params(person, address)
    params.require(:person).permit(person, addresses_attributes: address)
  end

  
end
