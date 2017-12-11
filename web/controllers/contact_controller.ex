defmodule Felm.ContactController do
  use Felm.Web, :controller

  alias Felm.Contact

  def index(conn, params) do
    page = Contact
    |> order_by(:first_name)
    |> Repo.paginate(params)

    render conn, page: page
  end
end