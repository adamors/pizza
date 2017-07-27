module Api
  module V2
    class ToppingsController < ApplicationController
      def index
        @toppings = PizzaTopping.eager_load(:topping).where(pizza_id: params[:pizza_id]).map(&:topping)
        render json: @toppings
      end
    end
  end
end
