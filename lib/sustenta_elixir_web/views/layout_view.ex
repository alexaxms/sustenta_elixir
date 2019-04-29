defmodule SustentaElixirWeb.LayoutView do
  use SustentaElixirWeb, :view

  def current_session(conn) do
    Plug.Conn.get_session(conn, :phauxth_session_id)
  end
end
