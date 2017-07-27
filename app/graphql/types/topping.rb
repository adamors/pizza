Types::Topping = GraphQL::ObjectType.define do
  name 'Topping'
  description 'These are what you eat'

  field :id, !types.ID, 'Unique identifier of a topping'
  field :name, !types.String, 'Name of a topping'
  field :image, types.String, 'Image of a topping'
  field :icon, types.String, 'Icon of a topping'
  field :pizzas, types[Types::Pizza], 'Pizzas that have this topping'
end

