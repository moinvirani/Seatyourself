WORKFLOW DONE:

<!-- Restaurants -->

Controllers:

rails g controller restaurants index show new edit --no-test-framework


Models for:

name: string
neighbourhood: string
description: text
price_in_cents: integer
hours: string
city: string
phone: string
category: string

rails g model Restaurant name:string neighbourhood:string description:text price_in_cents:integer hours:string city:string phone:string category:string --no-test-framework

<!-- Users  -->

Controllers for:
- users
- user_sessions
- oauths (generated with sorcery)

Models:
- user
- authentication (sorcery)

<!-- Reservations -->

Models:

rails g model Reservation begin_time:datetime end_time:datetime restaurant:references user:references notes:text

Controller:

rails g controller reservations

<!-- Categories -->

rails g model Category name:string

<!-- Reviews -->

rails g controller reviews index show new edit --no-test-framework

rails g model Review comment:text restaurant_id:integer user_id:integer

