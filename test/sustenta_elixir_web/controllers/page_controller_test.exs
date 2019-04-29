defmodule SustentaElixirWeb.PageControllerTest do
  use SustentaElixirWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "Quiénes Somos page test", %{conn: conn} do
    conn = get(conn, "/quienes_somos")
    assert html_response(conn, 200) =~ "Quiénes Somos"
  end
end
