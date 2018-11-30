Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createUser, function: Resolvers::CreateUser.new
  field :updateUser, function: Resolvers::UpdateUser.new
  field :deleteUser, function: Resolvers::DeleteUser.new
end
