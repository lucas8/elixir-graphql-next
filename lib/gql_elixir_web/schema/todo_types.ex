defmodule GqlElixirWeb.Schema.TodoTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: GqlElixir.Repo

  alias GqlElixirWeb.Resolvers

  @desc "One todo item"
  object :item do
    field :id, :id
    field :title, :string
    field :checked, :boolean
  end

  object :item_queries do
    @desc "Get all todo items"
    field :list_items, list_of(:item) do
      resolve(&Resolvers.TodoResolver.list_items/3)
    end
  end

  object :item_mutations do
    field :create_item, :item do
      arg(:title, non_null(:string))
      arg(:checked, :boolean)

      resolve(&Resolvers.TodoResolver.create_item/3)
    end
  end

  object :item_subscriptions do
    field :item_created, :item do

    end
  end
end
