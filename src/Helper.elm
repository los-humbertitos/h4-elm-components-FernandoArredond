module Helper exposing (evalChars, headers, hyperlink, isUpperChars, joinWords)

import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ " " ++ word2


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