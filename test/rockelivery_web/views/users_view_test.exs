defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    token = "xyz123"
    response = render(UsersView, "create.json", token: token, user: user)

    assert %{
             message: "User created!",
             token: "xyz123",
             user: %Rockelivery.User{
               address: "Rua dos Bobos, 0",
               age: 25,
               cep: "12345678",
               cpf: "12345678910",
               email: "bobo@mail.com",
               id: "3a65f2ba-cbcd-4b2e-aa82-a3e8eb22e012",
               inserted_at: nil,
               name: "João Bobo",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
