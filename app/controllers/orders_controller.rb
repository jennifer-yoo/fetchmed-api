class OrdersController < ApplicationController

    def index
        @orders = Orders.all
        render json: @orders
    end

    def show
        @order = Order.find(params[:id])
        render json: @order.to_json
    end


end
