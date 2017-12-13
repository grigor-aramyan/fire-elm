defmodule Felm.ContactController do
  use Felm.Web, :controller

  alias Felm.Contact

  def index(conn, params) do
    search = Map.get(params, "search", " ")

    page = Contact
    |> Contact.search(search)
    |> order_by(:first_name)
    |> Repo.paginate(params)

    render conn, page: page
  end
end