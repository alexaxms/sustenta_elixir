defmodule SustentaElixirWeb.Router do
  use SustentaElixirWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SustentaElixirWeb do
    pipe_through :browser

    resources "/", PageController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", SustentaElixirWeb do
  #   pipe_through :api
  # end
end
