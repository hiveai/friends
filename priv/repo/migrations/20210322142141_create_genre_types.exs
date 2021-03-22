defmodule Friends.Repo.Migrations.CreateGenreTypes do
  use Ecto.Migration

  def change do
    create table(:genre_types) do
      add :name, :string
    end
  end
end
