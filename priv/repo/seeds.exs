# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rockelivery.Repo.insert!(%Rockelivery.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rockelivery.{Item, Order, Repo, User}

IO.puts("========== Inserting User... ==========")

user = %User{
  age: 27,
  address: "Rua dos Aliados",
  cep: "09200500",
  cpf: "12345678911",
  email: "johndoe@mail.com",
  password: "test123",
  name: "John Doe"
}

%User{id: user_id} = Repo.insert!(user)

IO.puts("========== Inserting Items... ==========")

item1 = %Item{
  category: :food,
  description: "Yakisoba",
  price: Decimal.new("25.40"),
  photo: "priv/photos/yakisoba.png"
}

item2 = %Item{
  category: :drink,
  description: "Coca-Cola",
  price: Decimal.new("4.90"),
  photo: "priv/photos/coca.png"
}

Repo.insert!(item1)
Repo.insert!(item2)

IO.puts("========== Inserting Order... ==========")

order = %Order{
  user_id: user_id,
  items: [item1, item2, item2],
  comments: "Lucky cookies, please",
  payment_method: :credit_card
}

Repo.insert!(order)
