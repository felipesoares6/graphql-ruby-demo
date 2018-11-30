class Resolvers::UpdateUser < GraphQL::Function
  argument :id, !types.ID
  argument :name, types.String
  argument :email, types.String

  type Types::UserType

  def call(_obj, args, _ctx)
    user = User.find_by(id: args[:id])

    user.update!(
      name: args[:name] || user.name,
      email: args[:email] || user.email
    )

    user
  end
end
