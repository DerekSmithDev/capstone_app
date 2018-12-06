class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @order = Order.find_by(id: input_id)
    render "show.json.jbuilder"  
  end

  def create
    @order = Order.new(
      user_id: params["user_id"],
      ticket_id: params["ticket_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"]
      )
    if @order.save
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}, status: 422
    end
  end

  def update
    @order = Order.find_by(id: params["id"])

    @order.user_id = params["user_id"] || @order.user_id
    @order.ticket_id = params["ticket_id"] || @order.ticket_id
    @order.quantity = params["quantity"] || @order.quantity
    @order.subtotal = params["subtotal"] || @order.subtotal
    @order.tax = params["tax"] || @order.tax
    @order.total = params["total"] || @order.total

    if @order.update
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}, status: 422
    end
  end

  def destroy
    @input_id = params["id"]
    order = Order.find_by(id: @input_id)
    
    if order.destroy
      render "destroy.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}, status: 422
    end
  end
end
