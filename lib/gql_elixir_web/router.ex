defmodule GqlElixirWeb.Router do
  use GqlElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug.GraphiQL, schema: GqlElixirWeb.Schema, interface: :playground

    forward "/", Absinthe.Plug, schema: GqlElixirWeb.Schema
  end
end
