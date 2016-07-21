require './models/user'
require 'Faker'

(0..10).each do |i|
  User.create(
    name: "Name #{i}",
    email: "Email #{i}",
    address: "Address #{i}",
    password: "Password #{i}",
    cc_number: "creditCardNumber #{i}"
  )
end
