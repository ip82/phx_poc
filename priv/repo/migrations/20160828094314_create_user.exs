defmodule Phx.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string, null: false
      add :last_name, :string
      add :email, :string
      add :encrypted_password, :string
      add :provider_id, :string
      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
