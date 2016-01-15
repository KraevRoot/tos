# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
Story.delete_all
stories = Story.create([{ title: "Ordinary story", description: "Hell yeah", tag_names: "haha lool imba"},
						{ title: "LoveSong", description: "This is story about love. About things what we really want, but can not have.", tag_names: "huehue hihi"},
						{ title: "League of Legends", description: "Most popular game in the World", tag_names: ""},
						{ title: "Oracle", description: "the dark company the dark company the dark company the dark company the dark company the dark company", tag_names: "oracle java"},
						{ title: "Soul Edge", description: "Epic game from my childhood!", tag_names: "childhood"},
						{ title: "Dota 2", description: "popular game for kids and they mother", tag_names: "dniwe"},
						{ title: "Never gonna give you up!", description: "popular song from 80s, by Ashley", tag_names: "music"},
						{ title: "Rammstein new album", description: "haha, they are trolls", tag_names: "music ramm"},
						{ title: "World of Warcraft", description: "best MMORPG for all time", tag_names: "online"},
						{ title: "Grandmother from Grodno", description: "epic lamer", tag_names: "awful"},
						{ title: "All work and no play makes Jack a dull boy", description: "working all day can hurt you", tag_names: "hurt"},
						{ title: "East or West home is best", description: "home is your sweetest place", tag_names: "life"},
						{ title: "Black tea", description: "I like it", tag_names: "tea drink"},
						{ title: "Coca cola", description: "most popular drink", tag_names: "coca"},
						{ title: "To love, to shine...", description: "words from a Soul Edge soundtrack", tag_names: "music"},
						{ title: "not an ordinary story", description: "fales yeah", tag_names: "story love imba"},
						{ title: "DeadSong", description: "About things what we really want, but can not have.", tag_names: "huehue hihi"},
						{ title: "Counter Strike GO", description: "Most popular shooter in the World", tag_names: "pew pew"},
						{ title: "Oracle colacolacolacola ", description: "the dark company the dark company the dark company the dark company the darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the dark company the dark company", tag_names: "oracle java"},
						{ title: "DarkSouls cola", description: "Epic Grandmother game!", tag_names: "game, teemo"},
						{ title: "Dota 2 Grandmother", description: "popular game for kids and they mother", tag_names: "dniwe"},
						{ title: "Never gonna givegonna givegonna givegonna givegonna give you up!", description: "popular song from opular song from opular song from opular song from 80s, by Ashley", tag_names: "music"},
						{ title: "Helli new album", description: "opular song from opular song from opular song from , they are trolls", tag_names: "music ramm"},
						{ title: "None of Warcraft", description: "best none for all time", tag_names: "online"},
						{ title: "Grandmother and EastEast from  colacolacola Grodno", description: "epic lamer", tag_names: "awful"},
						{ title: "All work WestWest and no play makes Jack a dull boy", description: "working all day can hurt you", tag_names: "hurt"},
						{ title: "East or BlackBlackBlackBlack West colacolacola home is best", description: "home is your sweetest place", tag_names: "life"},
						{ title: "Black CocaCocaCocaCoca  colacolacolacolatea", description: "I like it", tag_names: "tea drink"},
						{ title: "Coca cola", description: "most popular drink", tag_names: "coca"}])
