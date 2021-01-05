class OrdersController < ApplicationController

    def index
        @orders = Orders.all
        render json: @orders
    end

    def show
        @order = Order.find(params[:id])
        render json: @order.to_json
    end

    def create
        @order = Order.create(order_params)
        if @order.valid?
            @order.save
            render json: @order.to_json
        else
            render json: { error: 'invalid order, try again' }
        end
    end

    private

    def order_params
        params.require(:order).permit(:user_id)
    end

end
