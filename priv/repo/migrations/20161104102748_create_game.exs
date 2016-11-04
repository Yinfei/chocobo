defmodule Chocobo.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :title, :string
      add :release_date, :string
      add :owned, :boolean, default: false, null: false
      add :box, :boolean, default: false, null: false
      add :manual, :boolean, default: false, null: false

      timestamps()
    end

  end
end
