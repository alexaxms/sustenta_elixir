defmodule SustentaElixirWeb.PageController do
  use SustentaElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"id" => id}) do
    render(conn, "#{id}.html")
  end
end
