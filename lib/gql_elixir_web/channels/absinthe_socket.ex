defmodule GqlElixirWeb.AbsintheSocket do
  use Phoenix.Socket
  use Absinthe.Phoenix.Socket, schema: GqlElixirWeb.Schema

  def connect(_, socket) do
    {:ok, socket}
  end

  def id(_), do: nil
end
