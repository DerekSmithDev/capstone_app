class Api::TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @ticket = Ticket.find_by(id: input_id)
    render "show.json.jbuilder"  
  end

  def create
    @ticket = Ticket.new(
      event_id: params["event_id"],
      price: params["price"]
      )
    if @ticket.save
      render "show.json.jbuilder"
    else
      render json: {errors: @ticket.errors.full_messages}, status: 422
    end
  end

  def update
    @ticket = Ticket.find_by(id: params["id"])

    @ticket.event_id = params["event_id"] || @ticket.event_id
    @ticket.price = params["price"] || @ticket.price

    if @ticket.update
      render "show.json.jbuilder"
    else
      render json: {errors: @ticket.errors.full_messages}, status: 422
    end
  end

  def destroy
    @input_id = params["id"]
    ticket = Ticket.find_by(id: @input_id)
    
    if ticket.destroy
      render "destroy.json.jbuilder"
    else
      render json: {errors: @ticket.errors.full_messages}, status: 422
    end
  end
end
