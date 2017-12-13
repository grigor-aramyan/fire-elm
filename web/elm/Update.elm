module Update exposing (..)

import Messages exposing (..)
import Model exposing (..)
import Commands exposing (fetch)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FetchResult (Ok response) ->
            Debug.log "updating"
            { model | contactList = response } ! []

        FetchResult (Err error) ->
            Debug.log "error update"
            { model | error = Just "Something went wrong..." } ! []

        Paginate pageNumber ->
            model ! [ fetch pageNumber model.search ]

        HandleSearchInput value ->
            { model | search = value } ! []

        HandleFormSubmit ->
            model ! [ fetch 1 model.search ]