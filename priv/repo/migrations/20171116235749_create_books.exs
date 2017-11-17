defmodule Biblioteka.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :ISBN, :string
      add :title, :string
      add :slug, :string
      add :release_year, :integer
      add :tags, :string
      add :description, :string
      add :image, :string
      add :external_image_url, :string
      add :quantity, :integer
      add :in_stock, :boolean, default: false, null: false
      add :language_id, references(:languages, on_delete: :nothing)
      add :publisher_id, references(:publisher, on_delete: :nothing)
      add :author_id, references(:authors, on_delete: :nothing)

      timestamps()
    end

    create index(:books, [:language_id])
    create index(:books, [:publisher_id])
    create index(:books, [:author])
  end
end
