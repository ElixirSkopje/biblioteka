defmodule Biblioteka.Book.Language do
  use Ecto.Schema
  import Ecto.Changeset
  alias Biblioteka.Book.Language


  schema "languages" do
    field :iso_name, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Language{} = language, attrs) do
    language
    |> cast(attrs, [:name, :iso_name])
    |> validate_required([:name, :iso_name])
  end
end
