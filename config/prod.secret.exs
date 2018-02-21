use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :tasktrackerapp, TasktrackerappWeb.Endpoint,
  secret_key_base: "fEkY4b1vGcQR9R1rno4qVAJk/RK5Ba/LaTyDM0qWJ8Dh+WC7Vp/26vlZx+Lwrb2k"

# Configure your database
config :tasktrackerapp, Tasktrackerapp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "tasktrackerapp",
  password: "*Megha1993",
  database: "tasktrackerapp_prod",
  pool_size: 15
