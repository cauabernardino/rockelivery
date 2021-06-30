defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "address" => "Rua dos Bobos, 0",
      "age" => 25,
      "cep" => "01001000",
      "cpf" => "12345678910",
      "email" => "bobo@mail.com",
      "name" => "João Bobo",
      "password" => "123456"
    }
  end

  def user_factory do
    %User{
      address: "Rua dos Bobos, 0",
      age: 25,
      cep: "12345678",
      cpf: "12345678910",
      email: "bobo@mail.com",
      name: "João Bobo",
      password: "123456",
      id: "3a65f2ba-cbcd-4b2e-aa82-a3e8eb22e012"
    }
  end

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
