module Decoders exposing (..)

import Json.Decode as JD exposing (..)
import Json.Decode.Extra exposing ((|:))
import Json.Decode.Pipeline exposing (decode, required, optional)
import Model exposing (..)

contactListDecoder : JD.Decoder ContactList
contactListDecoder =
    decode
        ContactList
            |> required "entries" (list contactDecoder)
            |> required "page_number" int
            |> required "total_entries" int
            |> required "total_pages" int

contactDecoder : JD.Decoder Contact
contactDecoder =
    decode
        Contact
            |> required "id" int
            |> required "first_name" string
            |> required "last_name" string
            |> required "gender" int
            |> required "birth_date" string
            |> required "location" string
            |> optional "phone_number" string "748397483"
            |> required "email" string
            |> optional "headline" string "some headline"
            |> optional "picture" string "https://randomuser.me/api/portraits/women/33.jpg"