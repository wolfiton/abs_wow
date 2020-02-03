use Mix.Config

# Configure your database
config :abs_wow, AbsWow.Repo,
  username: "dan",
  password: "postgres",
  database: "abs_wow_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :abs_wow, AbsWowWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
