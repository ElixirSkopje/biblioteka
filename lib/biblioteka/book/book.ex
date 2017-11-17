defmodule Biblioteka.Book.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias Biblioteka.Book.Book


  schema "books" do
    field :ISBN, :string
    field :description, :string
    field :external_image_url, :string
    field :image, :string
    field :in_stock, :boolean, default: false
    field :quantity, :integer
    field :release_year, :integer
    field :slug, :string
    field :tags, :string
    field :title, :string
    field :language_id, :id
    field :publisher_id, :id
    field :author, :id

    timestamps()
  end

  @doc false
  def changeset(%Book{} = book, attrs) do
    book
    |> cast(attrs, [:ISBN, :title, :slug, :release_year, :tags, :description, :image, :external_image_url, :quantity, :in_stock])
    |> validate_required([:ISBN, :title, :slug, :release_year, :tags, :description, :image, :external_image_url, :quantity, :in_stock])
  end
end
