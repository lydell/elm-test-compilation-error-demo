module Example exposing (example)

{-| Example module

@docs example

Imports for examples (uncomment for successful elm-test):

    -- import Char

-}


{-| This is really just List.filter.

    example Char.isUpper ['a', 'A']
    --> ['A']

-}
example : (a -> Bool) -> List a -> List a
example =
    List.filter
