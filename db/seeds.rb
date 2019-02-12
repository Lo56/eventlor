# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


#creation of 10 users
10.times do
  @u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, description: Faker::Music.album, email: Faker::Internet.email)
end
p "Users'creation"

#creation of 10 events
10.times do
  @e = Event.create(title: Faker::Job.title, description: Faker::Pokemon.name, start_date:Faker::Date.between(Date.today, 1.month.from_now), duration: 5 * (faker.random.number(10)), price: Faker::Number.between(1, 1000), location: Faker::Address.city, user_id: @u)
end
p "Events'creation"

#creation of 10 attendances
10.times do
  t = Attendance.create(stripe_customer_id: Faker::Stripe.valid_token, user_id: @u, event_id: @e)
end
p "Attendancies creation"

