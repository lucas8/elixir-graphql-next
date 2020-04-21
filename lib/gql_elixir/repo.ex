defmodule GqlElixir.Repo do
  use Ecto.Repo,
    otp_app: :gql_elixir,
    adapter: Ecto.Adapters.Postgres
end
