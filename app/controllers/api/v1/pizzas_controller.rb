module Api
  module V1
    class PizzasController < ApplicationController
      def index
        @pizza = Pizza.eager_load(:toppings, :reviews).all
        render json: @pizza, each_serializer: ::V1::PizzaSerializer
      end

      def show
        @pizza = Pizza.find(params[:id])
        render json: @pizza, serializer: ::V1::PizzaWithDetailsSerializer
      end
    end
  end
end
