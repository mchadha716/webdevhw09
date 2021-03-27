defmodule EventsSpa.Repo.Migrations.CreateRsvps do
  use Ecto.Migration

  def change do
    create table(:rsvps) do
      add :text, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :event_id, references(:events, on_delete: :nothing)

      timestamps()
    end

    create index(:rsvps, [:user_id])
    create index(:rsvps, [:event_id])
  end
end
