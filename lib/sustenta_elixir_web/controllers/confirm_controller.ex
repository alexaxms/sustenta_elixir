defmodule SustentaElixirWeb.ConfirmController do
  use SustentaElixirWeb, :controller

  alias Phauxth.Confirm
  alias SustentaElixir.Accounts
  alias SustentaElixirWeb.Email

  def index(conn, params) do
    case Confirm.verify(params) do
      {:ok, user} ->
        Accounts.confirm_user(user)
        Email.confirm_success(user.email)

        conn
        |> put_flash(:info, "Your account has been confirmed")
        |> redirect(to: Routes.session_path(conn, :new))

      {:error, message} ->
        conn
        |> put_flash(:error, message)
        |> redirect(to: Routes.session_path(conn, :new))
    end
  end
end
