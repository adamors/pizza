module Api
  module V2
    class ReviewsController < ApplicationController
      def index
        @reviews = Review.where(pizza_id: params[:pizza_id])
        render json: @reviews
      end

      def show
        @review = Review.where(pizza_id: params[:pizza_id])
                        .where(id: params[:id]).first
        render json: @review
      end
    end
  end
end
