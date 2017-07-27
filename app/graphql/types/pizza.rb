Types::Pizza = GraphQL::ObjectType.define do
  name 'Pizza'
  description 'These are what you eat'

  field :id, !types.ID, 'Unique identifier of a Pizza'
  field :name, !types.String, 'Name of a pizza'
  field :weight, !types.Int, 'The weight of pizza in grams'
  field :vegetarian, !types.Boolean, 'If the pizza is vegetarian'
  field :can_be_delivered, !types.Boolean, 'If a pizza can be delivered'
  field :on_sale, !types.Boolean, 'If a pizza is on sale'
  field :healthy, !types.Boolean, 'If a pizza is healthy'
  field :calories, !types.Boolean, 'Calories in a pizza'
  # field :allergens, types.String, 'Allergens in a pizza'

  field :toppings, types[Types::Topping] do
    description 'Toppings on a pizza'
    resolve -> (pizza, arguments, context) {
      pizza.toppings
    }
  end

  field :reviews, types[Types::Review] do
    description 'Reviews of a pizza'
    resolve -> (pizza, arguments, context) {
      pizza.reviews
    }
  end
end
