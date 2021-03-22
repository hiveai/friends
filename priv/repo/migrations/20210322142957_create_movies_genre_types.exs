defmodule Friends.Repo.Migrations.CreateMoviesGenreTypes do
  use Ecto.Migration

  def change do
    create table(:movies_genre_types) do
      add :movie_id, references(:movies)
      add :genre_type_id, references(:genre_types)
    end

    create unique_index(:movies_genre_types, [:movie_id, :genre_type_id])
  end
end
