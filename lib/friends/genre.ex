defmodule Friends.Genre do
  use Ecto.Schema

  schema "genres" do
    field :name, :string
  end
end
