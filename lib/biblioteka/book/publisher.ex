defmodule Biblioteka.Book.Publisher do
  use Ecto.Schema
  import Ecto.Changeset
  alias Biblioteka.Book.Publisher


  schema "publishers" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Publisher{} = publisher, attrs) do
    publisher
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
