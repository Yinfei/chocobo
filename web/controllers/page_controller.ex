defmodule Chocobo.PageController do
  use Chocobo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
