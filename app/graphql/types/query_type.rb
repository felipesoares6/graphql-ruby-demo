Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :users, !types[Types::UserType] do
    resolve ->(_obj, _args, _ctx) { User.all }
  end

  field :user, type: Types::UserType do
    argument :id, !types.ID

    resolve ->(_obj, args, _ctx) { User.find(args[:id]) }
  end
end
