module V2
  class PizzaSerializer < ActiveModel::Serializer
    attributes :id, :name, :weight, :size, :vegetarian, :can_be_delivered,
               :number_of_reviews, :on_sale, :healthy, :toppings,
               :calories, :allergens, :created_at, :updated_at

    has_many :toppings, serializer: ::V2::ToppingWithIconSerializer

    def number_of_reviews
      object.reviews.count
    end
  end
end
