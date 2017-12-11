alias Felm.Contact
alias Felm.Repo

{:ok, date} = Ecto.Date.cast({2000, 07, 11})
Repo.insert!(%Contact{first_name: "janna", last_name: "babayan", gender: 1, birth_date: date,
    location: "gyumri", email: "jan@baba.com"})
Repo.insert!(%Contact{first_name: "meliq", last_name: "ananyan", birth_date: date,
  location: "abovyan", email: "mananyan@baba.com"})
Repo.insert!(%Contact{first_name: "jak", last_name: "fresko", birth_date: date,
  location: "paris", email: "jack@fresko.com"})
Repo.insert!(%Contact{first_name: "schmidt", last_name: "baba", birth_date: date,
  location: "berlin", email: "schmidt@baba.com"})
Repo.insert!(%Contact{first_name: "tomy", last_name: "meryliand", gender: 1, birth_date: date,
  location: "new-york", email: "tomy@maryland.com"})
Repo.insert!(%Contact{first_name: "mark", last_name: "wolberg", birth_date: date,
  location: "hollywood", email: "mwolberg@baba.com"})
Repo.insert!(%Contact{first_name: "canton", last_name: "fray", birth_date: date,
  location: "sidney", email: "cfray@aus.com"})
Repo.insert!(%Contact{first_name: "ani", last_name: "karapetyan", gender: 1, birth_date: date,
  location: "yerevan", email: "ani@karapetyan.com"})
Repo.insert!(%Contact{first_name: "amena", last_name: "lavtov", birth_date: date,
  location: "moscow", email: "alav@alvtov.com"})