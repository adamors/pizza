Types::ReviewInput = GraphQL::InputObjectType.define do
  name 'ReviewInput'

  description 'Properties for creating a Review'

  argument :title, !types.String do
    description 'Title of the review.'
  end

  argument :body, !types.String do
    description 'Description of the review.'
  end

  argument :pizzaID, !types.Int do
    description 'Id of the Pizza being reviewed'
  end
end
