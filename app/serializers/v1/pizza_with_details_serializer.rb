module V1
  class PizzaWithDetailsSerializer < ActiveModel::Serializer
    attributes :id, :name, :weight, :size, :vegetarian, :can_be_delivered,
               :on_sale, :healthy, :calories, :allergens, :created_at, :updated_at

    has_many :reviews
    has_many :toppings
  end
end

