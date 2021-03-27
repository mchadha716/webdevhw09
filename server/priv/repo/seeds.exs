# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EventsSpa.Repo.insert!(%EventsSpa.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#

defmodule Inject do
	def user(name, pass) do
		hash = Argon2.hash_pwd_salt("pass")
		Repo.insert!(%User{name: name, email: email password_hash: hash})
	end
end

alice = Inject.user("alice",  "alice@gmail.com", "test1")
bob = Inject.user("bob", "bob@gmail.com", "test2")


