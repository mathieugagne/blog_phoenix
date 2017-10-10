use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog_phoenix, BlogPhoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :blog_phoenix, BlogPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ims_admin",
  password: "ims",
  database: "blog_phoenix_dev",
  hostname: "mtl-pg-dev1",
  table_space: "ts_data02",
  schema_search_path: "ims,public",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 5
