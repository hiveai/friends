# lib/friends/genre_type.ex
defmodule Friends.Genre_Type do
  use Ecto.Schema

  schema "genre_types" do
    field :name, :string
  end
end
