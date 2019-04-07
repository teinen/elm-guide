import Browser
import Html exposing (..)
import Html.Events exposing (..)


-- MAIN

main =
  Browser.sandbox
    { init = init
    , update = update
    , view = view
    }


-- MODEL

type alias Model
  = String

init: Model
init =
  ""


-- UPDATE

type Msg = HelloWorld

update : Msg -> Model -> Model
update msg model =
  case msg of
    HelloWorld ->
      "Hello World!!"


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [text model]
    , button [ onClick HelloWorld ] [ text "click" ]]
