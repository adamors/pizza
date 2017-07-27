Types::RootQuery = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of the AdamsPizza GraphQL API.'

  field :pizza, Types::Pizza do
    description 'Find a Pizza by ID.'

    argument :id, !types.Int, 'The Pizza ID.'

    resolve -> (object, arguments, context) {
      Pizza.find(arguments[:id])
    }
  end

  field :toppings, !types[Types::Topping] do
    description 'A list of all Toppings in the system'

    resolve -> (object, arguments, context) {
      scope = Topping.all
    }
  end

  field :reviews, !types[Types::Review] do
    description 'A list of all the Reviews in the system'

    resolve -> (object, arguments, context) {
      scope = Review.all
    }
  end

  field :pizzas, !types[Types::Pizza] do
    description 'A list of all Pizzas in the system.'

    argument :vegetarian, types.Boolean, 'Vegetarian pizzas'
    argument :toppingCount, types.Int, 'At least this many toppings'
    argument :can_be_delivered, types.Boolean, 'If pizza can be delivered'
    argument :on_sale, types.Boolean, 'If pizza is on sale'

    resolve -> (object, arguments, context) {
      scope = Pizza.all

      if arguments[:vegetarian]
        scope = scope.where(vegetarian: arguments[:vegetarian])
      end

      if arguments[:toppingCount]
        scope = scope
                .joins(:pizza_toppings)
                .group(:pizza_id)
                .having('count(pizza_toppings.topping_id) >= ?', arguments[:toppingCount])
      end

      scope
    }
  end
end
