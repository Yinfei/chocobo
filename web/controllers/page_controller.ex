defmodule Chocobo.PageController do
  use Chocobo.Web, :controller

  alias Chocobo.Game

  def index(conn, _params) do
    games = Repo.all(Game)
    render(conn, "index.html", games: games)
  end
end
