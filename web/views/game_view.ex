defmodule Chocobo.GameView do
  use Chocobo.Web, :view

  def render("index.json", %{games: games}) do
    %{data: render_many(games, Chocobo.GameView, "game.json")}
  end

  def render("show.json", %{game: game}) do
    %{data: render_one(game, Chocobo.GameView, "game.json")}
  end

  def render("game.json", %{game: game}) do
    %{id: game.id,
      title: game.title,
      release_date: game.release_date,
      owned: game.owned,
      box: game.box,
      manual: game.manual}
  end
end
