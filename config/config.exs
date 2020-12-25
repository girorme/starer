# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :starer,
  ecto_repos: [Starer.Repo]

# Configures the endpoint
config :starer, StarerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MGJ+IqrUCtvsc8OO5fV55dTjdd+WsxLm5s9YLELj1+ZcTCKMrTdNduI1dtLOW7yY",
  render_errors: [view: StarerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Starer.PubSub,
  live_view: [signing_salt: "XXKM/Miz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
