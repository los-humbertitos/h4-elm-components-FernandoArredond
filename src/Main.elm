module Main exposing (main)

-- Esto conecta tu Main con tu Helper

import Browser
import Helper exposing (..)
import Html exposing (div, text)


main : Program () () ()
main =
    Browser.sandbox
        { init = ()
        , update = \_ model -> model
        , view =
            \_ ->
                div []
                    [ headers "Ejemplo de Headers"
                    , hyperlink "https://elm-lang.org" "Visita Elm"
                    , text ("Concatenación: " ++ joinWords "Hola" " Mundo")
                    ]
        }
