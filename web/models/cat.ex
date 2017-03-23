defmodule CatApi.Cat do
  use CatApi.Web, :model

  schema "cats" do
    field :fullname, :string
    field :hometown, :string
    field :age, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:fullname, :hometown, :age])
    |> validate_required([:fullname, :hometown, :age])
  end
end
