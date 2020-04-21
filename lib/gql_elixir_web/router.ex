defmodule GqlElixirWeb.Router do
  use GqlElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GqlElixirWeb do
    pipe_through :api
  end
end
