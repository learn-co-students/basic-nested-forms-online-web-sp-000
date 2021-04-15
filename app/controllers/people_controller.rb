class PeopleController < ApplicationController
  def new
    @person = Person.new
    #stub out addresses so that the fields in our form will generate
    @person.addresses.build(address_type: 'work')
    @person.addresses.build(address_type: 'home')
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
    #add new params keys for addresses_attributes
    params.require(:person).permit(
      :name,
      addresses_attributes: [
        :street_address_1,
        :street_address_2,
        :city,
        :state,
        :zipcode,
        :address_type
      ]
    )
  end
end
