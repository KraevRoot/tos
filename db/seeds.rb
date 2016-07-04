# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
Story.delete_all
User.delete_all
rosen_user = User.create(name: "Rosenroot", email: "Rosenroot@rosenroot.by", avatar: File.new("/home/kraevroot/anis.jpg"), password: "rosenroot", password_confirmation: "rosenroot")
dick_user = User.create(name: "Dick", email: "Dick@dick.by", avatar: File.new("/home/kraevroot/sosok.png"), password: "dickdick", password_confirmation: "dickdick")

stories = Story.create([{ title: "Ordinary story", description: "Hell yeah", tag_names: "haha lool imba", user: rosen_user},
						{ title: "LoveSong", description: "This is story about love. About things what we really want, but can not have.", tag_names: "huehue hihi", user: rosen_user},
						{ title: "League of Legends", description: "Most popular game in the World", tag_names: "", user: dick_user},
						{ title: "Oracle", description: "the dark company the dark company the dark company the dark company the dark company the dark company", tag_names: "oracle java", user: rosen_user},
						{ title: "Soul Edge", description: "Epic game from my childhood!", tag_names: "childhood", user: rosen_user},
						{ title: "Dota 2", description: "popular game for kids and they mother", tag_names: "dniwe", user: dick_user},
						{ title: "Never gonna give you up!", description: "popular song from 80s, by Ashley", tag_names: "music", user: rosen_user},
						{ title: "Rammstein new album", description: "haha, they are trolls", tag_names: "music ramm", user: dick_user},
						{ title: "World of Warcraft", description: "best MMORPG for all time", tag_names: "online", user: rosen_user},
						{ title: "Grandmother from Grodno", description: "epic lamer", tag_names: "awful", user: rosen_user},
						{ title: "All work and no play makes Jack a dull boy", description: "working all day can hurt you", tag_names: "hurt", user: rosen_user},
						{ title: "East or West home is best", description: "home is your sweetest place", tag_names: "life", user: rosen_user},
						{ title: "Black tea", description: "I like it", tag_names: "tea drink", user: rosen_user},
						{ title: "Coca cola", description: "most popular drink", tag_names: "coca", user: dick_user},
						{ title: "To love, to shine...", description: "words from a Soul Edge soundtrack", tag_names: "music", user: rosen_user},
						{ title: "not an ordinary story", description: "fales yeah", tag_names: "story love imba", user: dick_user},
						{ title: "DeadSong", description: "About things what we really want, but can not have.", tag_names: "huehue hihi", user: rosen_user},
						{ title: "Counter Strike GO", description: "Most popular shooter in the World", tag_names: "pew pew", user: dick_user},
						{ title: "Oracle colacolacolacola ", description: "the dark company the dark company the dark company the dark company the darkthe dark company the dark comp darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the darkthe dark company the dark company the dark company the dark company the dark company", tag_names: "oracle java", user: rosen_user},
						{ title: "DarkSouls cola", description: "Epic Grandmother game!", tag_names: "game, teemo", user: rosen_user},
						{ title: "Dota 2 Grandmother", description: "popular game for kids and they mother", tag_names: "dniwe", user: rosen_user},
						{ title: "Never gonna givegonna givegonna givegonna givegonna give you up!", description: "popular song from opular song from opular song from opular song from 80s, by Ashley", tag_names: "music", user: rosen_user},
						{ title: "Helli new album", description: "opular song from opular song from opular song from , they are trolls", tag_names: "music ramm", user: dick_user},
						{ title: "None of Warcraft", description: "best none for all time", tag_names: "online", user: dick_user},
						{ title: "Grandmother and EastEast from  colacolacola Grodno", description: "epic lamer", tag_names: "awful", user: dick_user},
						{ title: "All work WestWest and no play makes Jack a dull boy", description: "working all day can hurt you", tag_names: "hurt", user: dick_user},
						{ title: "East or BlackBlackBlackBlack West colacolacola home is best", description: "home is your sweetest place", tag_names: "life", user: dick_user},
						{ title: "Black CocaCocaCocaCoca  colacolacolacolatea", description: "I like it", tag_names: "tea drink", user: dick_user},
						{ title: "Coca cola", description: "most popular drink", tag_names: "coca", user: dick_user}])

