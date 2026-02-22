module ExampleTest exposing (tests)

import Test exposing (..)
import Expect


tests : Test
tests =
    describe "Example"
        [ test "1+1=2" (\_ -> Expect.equal (1 + 1) 2) ]

