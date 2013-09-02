# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shit.delete_all

shits = Shit.create([
	{ content: 'I like weddings.' },
	{ content: 'I love him; I wish he was my dad.' },
	{ content: 'Lovely drop!' },
	{ content: 'Pub?' },
	{ content: 'Got smashed last night!' },
	{ content: 'Love my balcs!' },
	{ content: 'I dunno what that means but i\'m gonna tweet it.' },
	{ content: 'Wallop!' },
	{ content: 'We listened to hip hop all day yesterday, that\'s why I couldn\'t sleep last night.' },
	{ content: 'Man, I can\'t wait to go for a drop, me old fruits!' },
	{ content: 'Can we put some YouTube on so that we\'re more productive?' },
	{ content: 'Just don\'t say anything please.' },
	{ content: 'Pedro: Seriously man, have you ever looked at my porn site at home? Me: No Pedro: Why not man, it\'s hand-picked stuff! Me: By whom?! Pedro: By my mate Dennis!' },
	{ content: 'My spit wouldn\'t look like that; it\'d be all yellow.' },
	{ content: 'I ordered pizza last night and ate it in bed. Woke up next to it.' },
	{ content: 'American Football is for quims.' },
	{ content: '"Pedro this is your water." "Well not really, it\'s been here since this morning and it\'s gone off"' },
	{ content: 'when i was taking a shower this morning i pretended i was having a massive fucking go at the ux/design in the morning scrum, like i said everything and then after everyone clapped lol. i even started shaking because i got nervous then i said to myself, ok, calm down… it\'s not real' },
	{ content: '"Pedro, do you use the lift?" "Yeah, only to go up though"' },
	{ content: 'I\'m gonna prepend that bitch.' },
	{ content: 'Yuri went to give me a high 5 but his tiny little rat nail caught my nose.' },
	{ content: 'How can you eat so much chocolate and still have a very smooth head?' },
	{ content: '"Zwischensumme. Guess what that means." "It\'s subtotal." "But it doesn\'t even have an O in it!"' },
	{ content: 'It sounds like it should be in Rocky Balboa 6' },
	{ content: 'I couldn\'t give a monkey' },
	{ content: 'Alright helms!' },
	{ content: '"I used to love dinosaurs" "I didn\'t man they\'re all losers"' },
	{ content: '"Pedro, what\'s a nice place to go in Brazil" "My grandma\'s house man, it\'s fucking lovely."' },
	{ content: 'Please don\'t hire Toni man, she\'ll fuck my ass with a strap-on!' },
	{ content: 'The scroll goes all the way to fucking India man' },
	{ content: 'Can we go to the pub at 12:30, guys?" "No, 12:45" "I\'ll go early and warm the fucking tables up.' },
	{ content: 'I\'m not drinking in the week now... apart from last night when I got shit-faced.' },
	{ content: 'Man, I\'m glad I\'m wearing pants today' },
	{ content: 'I had a cold shower, the coldest shower ever man; couldn\'t even breathe' },
	{ content: 'What are you shaking your little small head for?' },
	{ content: 'I can tell it wasn\'t you because he hasn\'t got a white beard. Oh, you haven\'t got a white beard' },
	{ content: 'When we\'re doing a delivery, we need to stick together as a team" [walking around, drinking beer]' },	
	{ content: 'Man, even if you were raped in prison, it wouldn\'t take you that long to recover' },
	{ content: 'The thing is with those old devices, is that the only people who have them are stupid little shits who\'ll never buy anything online anyway' },
	{ content: 'What are you gonna do with this list, man?" "If you make any money on it, I want a fucking percentage' },
	{ content: 'They always have mango in there man, everyone smells like mango' },
	{ content: 'Cucumber in shower gel man, who puts fucking cucumber in shower gel?' },
	{ content: 'Put Radio 3 on man' }
])

puts "Success: all shits loaded in!"