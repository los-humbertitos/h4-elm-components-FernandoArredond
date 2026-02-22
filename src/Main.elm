module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (href)
import Html exposing (h1, h2, h3, h4, h5, h6, a)



joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url txt =
    a [ href url ] [ text txt ]



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
