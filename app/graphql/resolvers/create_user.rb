class Resolvers::CreateUser < GraphQL::Function
  argument :name, !types.String
  argument :email, !types.String

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:email]
    )
  end
end
