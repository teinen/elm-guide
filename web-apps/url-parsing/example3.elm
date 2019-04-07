import Url.Parser exposing (Parser, (</>), map, s, string, fragment)


type alias Docs =
  (String, Maybe String)


docsParser: Parser (Docs -> a) a
docsParser =
  map Tuple.pair (string </> fragment identity)
