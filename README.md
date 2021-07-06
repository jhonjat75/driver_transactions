# Driver Transactions

link heroku server: https://drivertransactest.herokuapp.com/

This project was to create a sinatra app utilizing the Model View Controller software design pattern.

## The story
In this test you must build a JSON RESTful API, for a small ride-hailing service, that will use the Wompi API (https://docs.wompi.co/docs/en-us/inicio-rapido) for monetary transactions. For starters, you must:
Create an account at https://comercios.wompi.co • You can use your own personal information Make sure you use the Sandbox environment.


## Table of content

- [Installation](#installation)
    - [Database](#Database)

## Installation

This document is for the driver transactions **vers 1**.

## Database
`sudo apt-get install postgresql postgresql-contrib libpq-dev`
`sudo systemctl start postgresql`
## Run commands
1. Clone this repository
2. Run `bundle install` to install any dependencies.
3. Run `rake db:create`
4. Run `rake db:migrate` to set up the database.
5. Run `shotgun config.ru`
6. create enviroment variables


## Cards test
For a transaction with a test card number you should use the following numbers to obtain different responses:

4242 4242 4242 4242 for an approved transaction (APPROVED). Any future expiry date and 3 digit CVC is valid.
4111 1111 1111 1111 for a declined transaction (DECLINED). Any future expiry date and 3 digit CVC is valid.
If you use any other card that is not one of the aforementioned ones, the final state of you transaction will be ERROR.


## HOURS SPENT ON PROJECT 22
to dedicate a maximum of 25 working hours


### Testing

**Note:** notes

# links help me
- https://x-team.com/blog/how-to-create-a-ruby-api-with-sinatra/
- http://sinatrarb.com/intro.html
- https://rubydoc.info/gems/sinatra#custom-route-matchers
- https://learn.co/lessons/sinatra-multiple-controllers
