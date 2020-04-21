defmodule GqlElixir.Todo.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :checked, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:title, :checked])
    |> validate_required([:title, :checked])
  end
end
