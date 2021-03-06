# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Book.create(
#   name: "JavaScript入門",
#   price: 2700,
#   publish: "A社",
#   publish_date: "2016-08-01"
# )
#
# Book.create(
#   name: "Ruby入門",
#   price: 2000,
#   publish: "B社",
#   publish_date: "2016-09-01"
# )
#
# Book.create(
#   name: "Ruby on Rails入門",
#   price: 3000,
#   publish: "C社",
#   publish_date: "2016-10-01"
# )




Faker::Config.locale = :ja

100.times do |index|
  Book.create(
    name: Faker::Book.title,
    price: Faker::Number.number(5),
    publish: Faker::Name.name,
    publish_date: Faker::Date.between(2.days.ago, Date.today)
  )
end
