# frozen_string_literal: true

# To setup a GraphQL object to represent books in the GraphQL API run this command:
# rails g graphql:object Book
# This command will inspect the Book model and create a GraphQL type that exposes all attributes from that model
# We could remove any of these fields if we did not want to expose them through the GraphQL API.

module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
