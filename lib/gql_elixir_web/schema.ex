defmodule GqlElixirWeb.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(GqlElixirWeb.Schema.TodoTypes)

  query do
    import_fields(:item_queries)
  end

  mutation do
    import_fields(:item_mutations)
  end

  subscription do
    import_fields(:item_subscriptions)
  end
end
