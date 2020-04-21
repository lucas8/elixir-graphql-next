defmodule GqlElixir.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string, null: false
      add :checked, :boolean, default: false

      timestamps()
    end

  end
end
