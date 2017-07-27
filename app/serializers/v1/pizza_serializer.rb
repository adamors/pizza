module V1
  class PizzaSerializer < ActiveModel::Serializer
    attributes :id, :name, :weight, :size, :vegetarian, :can_be_delivered,
      :number_of_toppings, :number_of_reviews, :on_sale, :healthy,
      :calories, :allergens, :created_at, :updated_at

    def number_of_toppings
      object.toppings.count
    end

    def number_of_reviews
      object.reviews.count
    end
  end
end
