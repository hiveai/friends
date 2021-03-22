# lib/friends/movie.ex
defmodule Friends.Movie do
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, Friends.Character
    has_one :distributor, Friends.Distributor
    many_to_many :actors, Friends.Actor, join_through: "movies_actors"
    many_to_many :genres, Friends.Genre, join_through: "movies_genres"
  end
end
