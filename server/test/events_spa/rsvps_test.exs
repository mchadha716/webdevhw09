defmodule EventsSpa.RsvpsTest do
  use EventsSpa.DataCase

  alias EventsSpa.Rsvps

  describe "rsvps" do
    alias EventsSpa.Rsvps.Rsvp

    @valid_attrs %{text: "some text"}
    @update_attrs %{text: "some updated text"}
    @invalid_attrs %{text: nil}

    def rsvp_fixture(attrs \\ %{}) do
      {:ok, rsvp} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Rsvps.create_rsvp()

      rsvp
    end

    test "list_rsvps/0 returns all rsvps" do
      rsvp = rsvp_fixture()
      assert Rsvps.list_rsvps() == [rsvp]
    end

    test "get_rsvp!/1 returns the rsvp with given id" do
      rsvp = rsvp_fixture()
      assert Rsvps.get_rsvp!(rsvp.id) == rsvp
    end

    test "create_rsvp/1 with valid data creates a rsvp" do
      assert {:ok, %Rsvp{} = rsvp} = Rsvps.create_rsvp(@valid_attrs)
      assert rsvp.text == "some text"
    end

    test "create_rsvp/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Rsvps.create_rsvp(@invalid_attrs)
    end

    test "update_rsvp/2 with valid data updates the rsvp" do
      rsvp = rsvp_fixture()
      assert {:ok, %Rsvp{} = rsvp} = Rsvps.update_rsvp(rsvp, @update_attrs)
      assert rsvp.text == "some updated text"
    end

    test "update_rsvp/2 with invalid data returns error changeset" do
      rsvp = rsvp_fixture()
      assert {:error, %Ecto.Changeset{}} = Rsvps.update_rsvp(rsvp, @invalid_attrs)
      assert rsvp == Rsvps.get_rsvp!(rsvp.id)
    end

    test "delete_rsvp/1 deletes the rsvp" do
      rsvp = rsvp_fixture()
      assert {:ok, %Rsvp{}} = Rsvps.delete_rsvp(rsvp)
      assert_raise Ecto.NoResultsError, fn -> Rsvps.get_rsvp!(rsvp.id) end
    end

    test "change_rsvp/1 returns a rsvp changeset" do
      rsvp = rsvp_fixture()
      assert %Ecto.Changeset{} = Rsvps.change_rsvp(rsvp)
    end
  end
end
