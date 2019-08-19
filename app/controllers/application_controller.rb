class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #gets attribute keys from params hash for person
  def person_keys
    all_keys = params[:person].keys
    all_keys.collect do |key|
      next if key == "addresses_attributes"
      key
    end
  end

  def address_keys
    address_attr = params[:person]["addresses_attributes"].values
    address_attr[0].keys
  end


end
