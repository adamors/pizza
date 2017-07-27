module Api
  module V2
    class PizzasController < ApplicationController
      def index
        @pizza = Pizza.eager_load(:toppings, :reviews).all
        render json: @pizza, each_serializer: ::V2::PizzaSerializer
      end

      def show
        @pizza = Pizza.find(params[:id])
        render json: @pizza, serializer: ::V2::PizzaWithDetailsSerializer
      end
    end
  end
end
