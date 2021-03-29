defmodule MsgWorld.Repo do
  use Ecto.Repo,
    otp_app: :msg_world,
    adapter: Ecto.Adapters.Postgres
end
