defmodule Chocobo.PageController do
  use Chocobo.Web, :controller

  alias Chocobo.Game

  def index(conn, _params) do
    games =
      Game
      |> where(owned: true)
      |> order_by(:title)
      |> Repo.all

    render(conn, "index.html", games: games)
  end
end
