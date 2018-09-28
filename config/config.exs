# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :qs_phoenix,
  namespace: QSPhoenix,
  ecto_repos: [QSPhoenix.Repo]

# Configures the endpoint
config :qs_phoenix, QSPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DZNvafmO6nqbSPYalBJPZnu8Ek3br8dv61NhAAcHLhoJ+JRAOXzu2QVaEjM1WsnO",
  render_errors: [view: QSPhoenixWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: QSPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
