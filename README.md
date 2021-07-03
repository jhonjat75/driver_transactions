# Driver Transactions

![logo](https://media.istockphoto.com/vectors/illustration-fast-tires-in-black-color-logo-concept-design-template-vector-id1092948290?b=1&k=6&m=1092948290&s=612x612&w=0&h=Fyc_Igu0qNu9SgHotywLYkykrz-0WZ831LoB2NaJ6Cc=)
This project was to create a Sinatra app utilizing the Model View Controller software design pattern.
## The story
In this test you must build a JSON RESTful API, for a small ride-hailing service, that will use the Wompi API (https://docs.wompi.co/docs/en-us/inicio-rapido) for monetary transactions. For starters, you must:
Create an account at https://comercios.wompi.co • You can use your own personal information Make sure you use the Sandbox environment. That means,


## Table of content

- [Installation](#installation)
    - [Wompi](#wompi)

## Installation

This document is for the driver transactions **vers 1**.

### Wompi

install wompi

### Testing

**Note:** notes

to carry out the tests it is necessary to execute the following commands:
`gem install sinatra`


# links help me
- https://x-team.com/blog/how-to-create-a-ruby-api-with-sinatra/
- http://sinatrarb.com/intro.html
- https://rubydoc.info/gems/sinatra#custom-route-matchers
- https://learn.co/lessons/sinatra-multiple-controllers

#Manager
This Sinatra MVC web app allows users to create

## Installation
1. Clone this repo
2. Run `bundle install` to install any dependencies.
3. Run `rake db:create`
4. Run `rake db:migrate` to set up the database.
5. Run `shotgun config.ru`


## Cards test
For a transaction with a test card number you should use the following numbers to obtain different responses:

4242 4242 4242 4242 for an approved transaction (APPROVED). Any future expiry date and 3 digit CVC is valid.
4111 1111 1111 1111 for a declined transaction (DECLINED). Any future expiry date and 3 digit CVC is valid.
If you use any other card that is not one of the aforementioned ones, the final state of you transaction will be ERROR.


## HOURS SPENT ON PROJECT 10
to dedicate a maximum of 25 working hours

## Database
sudo apt-get install postgresql postgresql-contrib libpq-dev
sudo systemctl start postgresql
