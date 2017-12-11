alias Felm.Contact
alias Felm.Repo

{:ok, date} = Ecto.Date.cast({2000, 07, 11})
Repo.insert!(%Contact{first_name: "mels", last_name: "byurn", gender: 0, birth_date: date,
  location: "norvey", email: "mal@byurn.com", phone_number: "8374938", headline: "some headline",
  picture: "http://wallpaper-house.com/data/out/5/wallpaper2you_79388.jpg"})