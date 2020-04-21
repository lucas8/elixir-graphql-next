defmodule GqlElixirWeb.Resolvers.TodoResolver do
  alias GqlElixir.Todo

  def list_items(_parent, _args, _resolutions) do
    {:ok, Todo.list_items()}
  end

  def create_item(_parent, args, _resolutions) do
    IO.puts("YOOOO")
    args
    |> Todo.create_item()
    |> case do
      {:ok, user} ->
        {:ok, user}

      {:error, changeset} ->
        {:error, extract_error_msg(changeset)}
    end
  end

  defp extract_error_msg(changeset) do
    changeset.errors
    |> Enum.map(fn {field, {error, _details}} ->
      [
        field: field,
        message: String.capitalize(error)
      ]
    end)
  end
end
