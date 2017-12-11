defmodule Felm.ContactView do
  use Felm.Web, :view

  def render("index.json", %{page: page}), do: page
end