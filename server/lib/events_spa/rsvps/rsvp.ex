defmodule EventsSpa.Rsvps.Rsvp do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rsvps" do
    field :text, :string
    field :user_id, :id
    field :event_id, :id

    timestamps()
  end

  @doc false
  def changeset(rsvp, attrs) do
    rsvp
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
