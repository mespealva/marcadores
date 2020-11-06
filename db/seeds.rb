# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Type.create(
    [
        {name: 'pdf'},
        {name: 'web'},
        {name: 'articulo'},
        {name: 'paper'}, 
        {name: 'musica'}
    ]
)

Cat.create(
    [
        {name: 'wena'},
        {name: 'fome', cat_id: 1},
        {name: 'util', cat_id: 2},
        {name: 'aburrido', cat_id: 2},
        {name: 'tldr', cat_id: 3}
    ]
)

Webmark.create(
    [
        {
            url: "https://alex.github.io/nyt-2020-election-scraper/battleground-state-changes.html",
            type_id: 1,
            cat_id: 4
        },
        {
            url: "http://empieza.desafiolatam.com/users/sign_in",
            type_id: 3,
            cat_id: 2
        },
        {
            url: "https://github.com/voormedia/rails-erd",
            type_id: 4,
            cat_id: 5
        },
        {
            url: "https://www.chartjs.org/docs/latest/",
            type_id: 2,
            cat_id: 1
        },  
        {
            url: "https://codigofacilito.com/articulos/eliminar-elementos-cascada-ror",
            type_id: 5,
            cat_id: 3
        },  
        {
            url: "https://api.jquery.com/toggle/",
            type_id: 1,
            cat_id: 5
        },  
        {
            url: "https://github.com/voormedia/rails-erd",
            type_id: 3,
            cat_id: 2
        },  
        {
            url: "https://twitter.com/DecisionDeskHQ/status/1324710866516905984",
            type_id: 4,
            cat_id: 4
        },  
        {
            url: "https://twitter.com/NilesGApol/status/1324709841705881602",
            type_id: 2,
            cat_id: 5
        },  
        {
            url: "https://twitter.com/DecisionDeskHQ/status/1324710866516905984",
            type_id: 3,
            cat_id: 2
        },  
        {
            url: "https://animate.style/",
            type_id: 4,
            cat_id: 3
        },  
        {
            url: "https://ethereum.org/en/",
            type_id: 5,
            cat_id: 1
        },  
        {
            url: "https://twitter.com/NilesGApol/status/1324709841705881602",
            type_id: 3,
            cat_id: 2
        },  
        {
            url: "https://twitter.com/NilesGApol/status/1324709841705881602",
            type_id: 5,
            cat_id: 2
        },  
        {
            url: "https://twitter.com/TweetsByCollin/status/1324713476825239554?s=20",
            type_id: 4,
            cat_id: 3
        },  
        {
            url: "https://vidgrid.tk.gg/#aHR0cHM6Ly8yNDcuZm94bmV3cy5jb20vaGxzL2xpdmUvMjAwMzU4Ni9GTkNITFN2My9wcmltYXJ5XzI2MjgubTN1OCxodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWJ3amhpa2tHalBVLGh0dHBzOi8vY25ubGl2ZS53YXJuZXJtZWRpYWNkbi5jb20vaGxzL2xpdmUvMjAxMTU5MS9QUk9ELWNubmxpdmUwL1ZJREVPXzJfMTAyODAwMC5tM3U4LGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9QlJCZHZkdmo5akEsNCxmYWxzZSwx",
            type_id: 2,
            cat_id: 4
        },  {
            url: "https://twitter.com/onlywanttriumph/status/1324715731662102533",
            type_id: 3,
            cat_id: 2
        },  {
            url: "https://support.discord.com/hc/es/articles/214925018",
            type_id: 3,
            cat_id: 2
        },  {
            url: "https://twitter.com/erictrump/status/1324086031591886850?s=21",
            type_id: 3,
            cat_id: 2
        },  {
            url: "http://empieza.desafiolatam.com/users/sign_in",
            type_id: 3,
            cat_id: 2
        }
    ]
)