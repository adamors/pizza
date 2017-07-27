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

  field :pizzas, !types[Types::Pizza] do
    description 'A list of all Pizzas in the system.'

    resolve -> (object, arguments, context) {
      scope = Pizza.all
=begin
      if arguments[:isClosed]
        scope = scope.where(closed: arguments[:isClosed])
      end

      if arguments[:price]
        scope = scope.where('restaurants.price <= ?', arguments[:price].length)
      end

      if arguments[:offersDelivery]
        scope = scope.joins(:restaurant_info).where(restaurant_infos: { delivery: arguments[:offersDelivery] })
      end

      scope.page(arguments[:page]).per(arguments[:perPage])
=end
    }
  end
end
