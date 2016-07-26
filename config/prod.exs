
use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  url: [host: "fast-savannah-21543.herokuapp.com", port: 443],
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info

# Finally import the config/prod.secret.exs
# which should be versioned separately.
#import_config "prod.secret.exs"
