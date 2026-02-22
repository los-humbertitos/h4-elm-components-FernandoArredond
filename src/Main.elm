module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Helper exposing (joinWords, headers, hyperlink)



main : Program () () ()
main =
    Browser.sandbox
        { init = ()
        , update = \_ model -> model
        , view = \_ ->
            div []
                [ headers "Ejemplo de Headers"
                , hyperlink "https://elm-lang.org" "Visita Elm"
                , text ("Concatenación: " ++ joinWords "Hola" " Mundo")
                ]
        }

