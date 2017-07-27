module Api
  module V1
    class ToppingsController < ApplicationController
      def index
        @toppings = PizzaTopping.eager_load(:topping).where(pizza_id: params[:pizza_id]).map(&:topping)
        render json: @toppings
      end

      def show
        @topping = Topping.find(params[:id])
        render json: @topping
      end
    end
  end
end
