defmodule CatApi.CatTest do
  use CatApi.ModelCase

  alias CatApi.Cat

  @valid_attrs %{age: 42, fullname: "some content", hometown: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Cat.changeset(%Cat{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Cat.changeset(%Cat{}, @invalid_attrs)
    refute changeset.valid?
  end
end
