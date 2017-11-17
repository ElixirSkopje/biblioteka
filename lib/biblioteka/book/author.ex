defmodule Biblioteka.Book.Author do
  use Ecto.Schema
  import Ecto.Changeset
  alias Biblioteka.Book.Author


  schema "authors" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Author{} = author, attrs) do
    author
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
