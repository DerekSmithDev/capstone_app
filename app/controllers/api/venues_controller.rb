class Api::VenuesController < ApplicationController
  def index
    @venues = Venue.all
    
    id_search = params[:id]
    if id_search
      @venues = @venues.where(id: id_search)
    end

    name_search = params[:name]
    if name_search
      @venues = @venues.where("name ILIKE ?", "%#{name_search}%")
    end

    address_search = params[:address]
    if address_search
      @venues = @venues.where("address ILIKE ?", "%#{address_search}%")
    end

    city_search = params[:city]
    if city_search
      @venues = @venues.where("city ILIKE ?", "%#{city_search}%")
    end

    state_search = params[:state]
    if state_search
      @venues = @venues.where("state ILIKE ?", "%#{state_search}%")
    end

    zip_search = params[:zip]
    if zip_search
      @venues = @venues.where("zip ILIKE ?", "%#{zip_search}%")
    end

    website_search = params[:website]
    if website_search
      @venues = @venues.where("website ILIKE ?", "%#{website_search}%")
    end

    contact_search = params[:contact]
    if contact_search
      @venues = @venues.where("contact ILIKE ?", "%#{contact_search}%")
    end

    email_search = params[:email]
    if email_search
      @venues = @venues.where("email ILIKE ?", "%#{email_search}%")
    end

    phone_search = params[:phone]
    if phone_search
      @venues = @venues.where("phone ILIKE ?", "%#{phone_search}%")
    end


    capacity_search = params[:capacity]
    if capacity_search
      @venues = @venues.where("capacity ILIKE ?", "%#{capacity_search}%")
    end

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
