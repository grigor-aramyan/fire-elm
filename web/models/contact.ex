defmodule Felm.Contact do
  use Felm.Web, :model

  @genders [
    {0, :male},
    {1, :female}
  ]

  @derive {Poison.Encoder, except: [:__meta__, :inserted_at, :updated_at]}

  def search(query, ""), do: query
  def search(query, search_query) do
    search_query = ts_query_format(search_query)

    query
    |> where(
      fragment(
      """
      (to_tsvector(
        'english',
        coalesce(first_name, "") || " " ||
        coalesce(last_name, "") || " " ||
        coalesce(location, "") || " " ||
        coalesce(headline, "") || " " ||
        coalesce(email, "") || " " ||
        coalesce(phone_number, "")
      ) @@ to_tsquery('english', ?))
      """,
      ^search_query
      )
    )
  end

  defp ts_query_format(search_query) do
    search_query
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&("#{&1}:*"))
    |> Enum.join(" & ")
  end

  def genders, do: @genders

  schema "contacts" do
    field :first_name, :string
    field :last_name, :string
    field :gender, :integer
    field :birth_date, Ecto.Date
    field :location, :string
    field :phone_number, :string
    field :email, :string
    field :headline, :string
    field :picture, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :gender, :birth_date, :location, :phone_number, :email, :headline, :picture])
    |> validate_required([:first_name, :last_name, :gender, :birth_date, :location, :phone_number, :email, :headline, :picture])
  end
end
