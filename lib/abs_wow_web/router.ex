defmodule AbsWowWeb.Router do
  use AbsWowWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward("/graphql", Absinthe.Plug, schema: AbsWowWeb.Schema)

    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: AbsWowWeb.Schema, interface: :playground)
  end
end
