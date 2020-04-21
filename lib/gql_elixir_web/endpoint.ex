defmodule GqlElixirWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :gql_elixir
  use Absinthe.Phoenix.Endpoint

  socket "/socket", GqlElixirWeb.AbsintheSocket,
    websocket: true,
    longpoll: false

  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug CORSPlug

  plug GqlElixirWeb.Router
end

