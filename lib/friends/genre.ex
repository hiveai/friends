defmodule Friends.Genre do
  use Ecto.Schema

  schema "genres" do
    field :name, :string
    many_to_many :movie, Friends.Movie, join_through: "movies_genres"
  end
end
