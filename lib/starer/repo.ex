defmodule Starer.Repo do
  use Ecto.Repo,
    otp_app: :starer,
    adapter: Ecto.Adapters.Postgres
end
