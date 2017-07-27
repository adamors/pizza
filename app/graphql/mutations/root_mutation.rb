Mutations::RootMutation = GraphQL::ObjectType.define do
  name 'Mutation'
  field :AddReview, Types::Review do
    description 'Create a review'
    argument :review, Types::ReviewInput

    resolve -> (t, inputs, c) {
      pizza = Pizza.find(inputs[:review][:pizzaID])
      review = pizza.reviews.build(title: inputs[:review][:title], body: inputs[:review][:body])
      if review.save
        review
      else
        raise GraphQL::ExecutionError.new("Invalid input for Review: #{review.errors.full_messages.join(', ')}")
      end
    }
  end
end
