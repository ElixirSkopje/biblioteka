defmodule Biblioteka.Repo.Migrations.CreateLanguages do
  use Ecto.Migration

  def change do
    create table(:languages) do
      add :name, :string
      add :iso_name, :string

      timestamps()
    end

  end
end
