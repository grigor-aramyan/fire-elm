module Update exposing (..)

import Messages exposing (..)
import Model exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FetchResult (Ok response) ->
            Debug.log "updating"
            { model | contactList = response } ! []

        FetchResult (Err error) ->
            Debug.log "error update"
            { model | error = Just "Something went wrong..." } ! []