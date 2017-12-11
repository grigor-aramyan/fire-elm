defmodule Felm.Repo do
  use Ecto.Repo, otp_app: :felm
  use Scrivener, page_size: 9
end
