class Resolvers::DeleteUser < GraphQL::Function
  argument :id, !types.ID

  type Types::UserType

  def call(_obj, args, _ctx)
    user = User.find_by(id: args[:id])

    user.delete

    user
  end
end
