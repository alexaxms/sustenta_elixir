defmodule SustentaElixirWeb.PageController do
  use SustentaElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
