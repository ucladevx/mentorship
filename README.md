# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Setup Instructions: 

Install ruby gems:
`$ bundle install`

Initialize postgreSQL: This can be done through the command line, or through the Postgres app (https://postgresapp.com/).

This includes creating the user and password according to config/database.yml. All items wrapped in [square brackets] are according to config/database.yml.

Creating the user:
`$createuser -l -S [username]`

Create the database:
`$createdb -O [username] [dbname]`

Alter the user to include password:

`ALTER USER [username] WITH PASSWORD '[password]';`


Migrate database:
`rake db:migrate`

Start the server:
`$ rails s`


Additional things to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
