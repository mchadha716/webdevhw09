defmodule EventsSpa.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :date, :string
      add :body, :text
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:events, [:user_id])
  end
end
