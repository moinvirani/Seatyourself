WORKFLOW STEPS:


Controllers:

1. rails g controller restaurants index show new edit --no-test-framework


Models for:

name: string
neighbourhood: string
description: text
price_in_cents: integer
hours: string
city: string
phone: string
category: string

1. rails g model Restaurant name:string neighbourhood:string description:text price_in_cents:integer hours:string city:string phone:string category:string --no-test-framework


