Types::Pizza = GraphQL::ObjectType.define do
  name 'Pizza'
  description 'These are what you eat'

  field :id, !types.ID
  field :name, !types.String
  field :weight, !types.Int
  field :vegetarian, !types.Boolean
end
