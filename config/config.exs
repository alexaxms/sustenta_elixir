# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sustenta_elixir,
  ecto_repos: [SustentaElixir.Repo]

# Configures the endpoint
config :sustenta_elixir, SustentaElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RZxX2vm0EZntXMSDCr0yakz4coCpc1HyeCUuOpZ4QQQiEGIhyMtV4J+GkjeP/0hw",
  render_errors: [view: SustentaElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SustentaElixir.PubSub, adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  user_context: SustentaElixir.Accounts,
  crypto_module: Argon2,
  token_module: SustentaElixirWeb.Auth.Token

# Mailer configuration
config :sustenta_elixir, SustentaElixirWeb.Mailer,
  adapter: Bamboo.LocalAdapter

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :template_engines,
       slim: PhoenixSlime.Engine,
       slime: PhoenixSlime.Engine

config :phoenix_slime, :use_slim_extension, true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
