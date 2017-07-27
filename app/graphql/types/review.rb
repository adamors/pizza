Types::Review = GraphQL::ObjectType.define do
  name 'Review'
  description 'Pizza reviews'

  field :id, !types.ID, 'Unique identifier of a review'
  field :title, !types.String, 'Title of a review'
  field :body, types.String, 'Body of the review'
  field :score, types.String, 'Score given for the pizza'
  field :pizza, Types::Pizza, 'The pizza this review is for'
end
