module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 num1 num2 num3 =
    num1 + num2 + num3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "Java", releaseYear = 1995, currentVersion = "17.0.2" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames inData =
    List.map .name inData


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\user ->
            case user.uType of
                "Student" ->
                    user.name

                _ ->
                    ""
        )
        userList


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "God of War"
      , releaseYear = 2018
      , available = True
      , downloads = 1500000
      , genres = [ "Action", "Aventure" ]
      }
    , { title = "Call of duty BO2"
      , releaseYear = 2012
      , available = False
      , downloads = 9999999
      , genres = [ "Shooter", "Action" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Predator Helios"
    , brand = "Acer"
    , screenSize = "15.6"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
