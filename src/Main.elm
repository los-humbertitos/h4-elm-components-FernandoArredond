module Main exposing (main)

import Browser
import Helper exposing (..) -- Esto conecta tu Main con tu Helper
import Html exposing (Html, div, text)

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