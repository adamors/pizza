AdamsPizzaSchema = GraphQL::Schema.define do
  query(Types::RootQuery)
  mutation(Mutations::RootMutation)
=begin
  resolve_type -> (type, obj, ctx) {

    Types.const_get(object.class.name)
  }
=end
end
