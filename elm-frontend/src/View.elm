module View exposing (..)

import Debug exposing (todo)
import Element exposing (Element, centerX, column, el, explain, fill, image, maximum, paddingXY, paragraph, spacing, text, textColumn, width)
import Element.Background as Background exposing (uncropped)
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
    Element.layout ([ Background.image "/images/stone-background.jpg" ] ++ textFont)
        (column ([ width <| maximum 1000 fill, centerX, explain todo ] ++ textFont)
            [ headerText
            , el [ centerX, paddingXY 36 36 ] (image [] { src = "/images/Magnus-Main-Image-Vintage-Roll.gif", description = "aksjdnaksjnd" })
            , infoText
            , paintings
            ]
        )


headerText : Element Msg
headerText =
    el [ Font.size 36, Font.bold, centerX, paddingXY 24 48 ] (text "Magnus Berntz Eriksen")


infoText : Element Msg
infoText =
    textColumn [ paddingXY 56 36, spacing 24, width fill, centerX ]
        [ paragraph [] [ text "Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. " ]
        , paragraph [] [ text "Lorem ipsum og andre buskevekster" ]
        , paragraph [] [ text "Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. Lorem ipsum og andre buskevekster. " ]
        ]


resString =
    String.fromChar (Char.fromCode 0x25CF)


paintings : Element Msg
paintings =
    column [ Font.size 48, paddingXY 36 36, spacing 36 ]
        [ text (resString ++ "2015" ++ resString)
        , image [] { src = "/images/artwork/2015/2015 A Loaded Message LARGE.jpg", description = "aksjdnaksjnd" }
        ]
