defmodule SustentaElixir.Repo do
  use Ecto.Repo,
    otp_app: :sustenta_elixir,
    adapter: Ecto.Adapters.Postgres
end
