# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(5) do |i|
  Event.create(name: "Event #{i}",
    description: "Its sample event with the number #{i}",
    event_date: Date.today + rand(3).months,
    place: "Random places number #{i}"
  )
end
