require './models/user'
require 'faker'

(0..10).each do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(4),
    cc_number: Faker::Number.number(4)
  )
end
