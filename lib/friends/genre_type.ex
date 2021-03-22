# lib/friends/genre_type.ex
defmodule Friends.Genre_Type do
  use Ecto.Schema

  schema "genre_types" do
    field :name, :string
    many_to_many :movie, Friends.Movie, join_through: "movies_genre_types"
  end
end
