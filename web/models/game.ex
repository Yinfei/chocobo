defmodule Chocobo.Game do
  use Chocobo.Web, :model

  schema "games" do
    field :title, :string
    field :release_date, :string
    field :owned, :boolean, default: false
    field :box, :boolean, default: false
    field :manual, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :release_date, :owned, :box, :manual])
    |> validate_required([:title, :release_date, :owned, :box, :manual])
  end
end
