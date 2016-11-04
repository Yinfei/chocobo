defmodule Chocobo.PageController do
  use Chocobo.Web, :controller

  alias Chocobo.Game

  def index(conn, _params) do
    games = Game |> Game.ordered_by_title() |> Repo.all
    render(conn, "index.html", games: games)
  end
end
