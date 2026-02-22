module Test.Generated.Main exposing (main)

import ExampleTest

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    Test.Runner.Node.run
        { runs = 100
        , report = ConsoleReport UseColor
        , seed = 122786919825876
        , processes = 16
        , globs =
            []
        , paths =
            [ "C:\\Users\\Usuario\\h4-elm-components-FernandoArredond\\tests\\ExampleTest.elm"
            ]
        }
        [ ( "ExampleTest"
          , [ Test.Runner.Node.check ExampleTest.tests
            ]
          )
        ]