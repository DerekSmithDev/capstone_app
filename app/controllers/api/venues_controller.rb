class Api::VenuesController < ApplicationController
  def index
    @venues = Venue.all
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @venue = Venue.find_by(id: input_id)
    render "show.json.jbuilder"  
  end

  def create
    @venue = Venue.new(
      name: params["name"],
      address: params["address"],
      city: params["city"],
      state: params["state"],
      zip: params["zip"],
      website: params["website"],
      contact: params["contact"],
      email: params["email"],
      phone: params["phone"],
      capacity: params["capacity"]
      )
    if @venue.save
      render "show.json.jbuilder"
    else
      render json: {errors: @venue.errors.full_messages}, status: 422
    end
  end

  def update
    @venue = Venue.find_by(id: params["id"])

    @venue.name = params["name"] || @venue.name
    @venue.address = params["address"] || @venue.address
    @venue.city = params["city"] || @venue.city
    @venue.state = params["state"] || @venue.state
    @venue.zip = params["zip"] || @venue.zip
    @venue.website = params["website"] || @venue.website
    @venue.contact = params["contact"] || @venue.contact
    @venue.email = params["email"] || @venue.email
    @venue.phone = params["phone"] || @venue.phone
    @venue.capacity = params["capacity"] || @venue.capacity

    if @venue.update
      render "show.json.jbuilder"
    else
      render json: {errors: @venue.errors.full_messages}, status: 422
    end
  end

  def destroy
    @input_id = params["id"]
    venue = Venue.find_by(id: @input_id)
    
    if venue.destroy
      render "destroy.json.jbuilder"
    else
      render json: {errors: @venue.errors.full_messages}, status: 422
    end
  end
end
