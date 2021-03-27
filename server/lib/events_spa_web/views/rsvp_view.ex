defmodule EventsSpaWeb.RsvpView do
  use EventsSpaWeb, :view
  alias EventsSpaWeb.RsvpView

  def render("index.json", %{rsvps: rsvps}) do
    %{data: render_many(rsvps, RsvpView, "rsvp.json")}
  end

  def render("show.json", %{rsvp: rsvp}) do
    %{data: render_one(rsvp, RsvpView, "rsvp.json")}
  end

  def render("rsvp.json", %{rsvp: rsvp}) do
    %{id: rsvp.id,
      text: rsvp.text}
  end
end
