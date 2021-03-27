defmodule EventsSpa.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :body, :string
    field :date, :string
    field :name, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :date, :body])
    |> validate_required([:name, :date, :body])
  end
end
