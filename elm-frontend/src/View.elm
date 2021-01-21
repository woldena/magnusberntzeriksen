module View exposing (..)

import Debug exposing (todo)
import Element exposing (Element, centerX, column, el, explain, fill, maximum, paddingXY, paragraph, text, width)
import Element.Font as Font
import Html exposing (Html, div)
import Model exposing (Model)
import Msg exposing (Msg)


textFont : List (Element.Attribute msg)
textFont =
    [ Font.color (Element.rgb 0 0 0)
    , Font.size 16
    , Font.family
        [ Font.typeface "Courier New"
        , Font.sansSerif
        ]
    ]


view : Model -> Html Msg
view model =
    Element.layout ([] ++ textFont)
        (column ([ width <| maximum 1000 fill, centerX, explain todo ] ++ textFont)
            [ headerText
            , infoText
            ]
        )


headerText : Element Msg
headerText =
    el [ Font.size 36, Font.bold, centerX, paddingXY 24 48 ] (text "Magnus Berntz Eriksen")


infoText : Element Msg
infoText =
    paragraph [ paddingXY 36 36 ]
        [ text "Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. "
        , text "Lorem ipsum og andre buskevekster"
        , text "Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. "
        ]
