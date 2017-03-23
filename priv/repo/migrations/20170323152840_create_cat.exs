defmodule CatApi.Repo.Migrations.CreateCat do
  use Ecto.Migration

  def change do
    create table(:cats) do
      add :fullname, :string
      add :hometown, :string
      add :age, :integer

      timestamps()
    end

  end
end
