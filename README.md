#Requirements
	Ruby 2.0.0
	// Heroku's default Ruby is now 2.0.0 so let's go with it

#To run:
	git clone ...
	cd ...
	bundle
	rake db:migrate
	rake db:seed

	// twitter oauth details.
	// requires a twitter app to be set up
	export consumer_key=foo
  	export consumer_secret=bar
  	export oauth_token=foo
  	export oauth_token_secret=bar

  	// to set up twitter oauth on heroku, install herou toolbelt, then:
  	heroku config:set consumer_key=foo
  	heroku config:set consumer_secret=bar
  	heroku config:set oauth_token=foo
  	heroku config:set oauth_token_secret=bar

	rails server
	0.0.0.0:3000

#All Pedro's shit:
	http://0.0.0.0:3000/shits/
	http://0.0.0.0:3000/shits.json

#Single Pedro shit:
	http://0.0.0.0:3000/shits/1
	http://0.0.0.0:3000/shits/1.json

#Admin shit:
	http://0.0.0.0:3000/admin/shits
	http://0.0.0.0:3000/admin/shits/1
	http://0.0.0.0:3000/admin/shits/1/edit
	http://0.0.0.0:3000/admin/shits/new

	default admin user:
	email: admin@example.com
	password: password

