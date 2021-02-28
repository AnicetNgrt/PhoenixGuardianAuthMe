# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth_me,
  ecto_repos: [AuthMe.Repo]

config :auth_me, AuthMe.UserManager.Guardian,
  issuer: "auth_me",
  secret_key: "dPvZgksViUaOrHNs4R/LWqNP9vDEHSuysJwSjQBEWyGrI/14FEODLt8agvCgw/iG"

# Configures the endpoint
config :auth_me, AuthMeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "haJK4hUi7Jyv9cJa3k71eNTqRXyFSu6v8/RAjHOvYffxT17Qup0idV2kVe4J96l5",
  render_errors: [view: AuthMeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuthMe.PubSub,
  live_view: [signing_salt: "WW3OmoUD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
