defmodule Friends.Repo.Migrations.CreateMoviesGenres do
  use Ecto.Migration

  def change do
    create table(:movies_genres) do
      add :movie_id, references(:movies)
      add :genre_id, references(:genres)
    end

    create unique_index(:movies_genres, [:movie_id, :genre_id])

  end
end
