#Requirements
	Ruby 2.0.0
	// Heroku's default Ruby is now 2.0.0 so let's go with it

#To run:
	git clone ...
	bundle
	rake db:migrate
	rake db:seed
	rails server
	0.0.0.0:3000

#All Pedro's shit:
	http://0.0.0.0:3000/shits/
	http://0.0.0.0:3000/shits.json

#Single Pedro shit:
	http://0.0.0.0:3000/shits/1
	http://0.0.0.0:3000/shits/1.json

#Admin shit:
	http://0.0.0.0:3000/admin
	http://0.0.0.0:3000/admin/shits/1
	http://0.0.0.0:3000/admin/shits/1/edit
	DELETE http://0.0.0.0:3000/admin/shits/1
	http://0.0.0.0:3000/admin/shits/new

