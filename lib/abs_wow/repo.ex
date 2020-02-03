defmodule AbsWow.Repo do
  use Ecto.Repo,
    otp_app: :abs_wow,
    adapter: Ecto.Adapters.Postgres
end
