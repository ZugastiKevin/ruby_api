# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Article.destroy_all

1.times do
  users = User.create(
    email: 'courgette@yopmail.com',
    password: 'chobits123'
  )
end

30.times do
  articles = Article.create(
    user_id: User.all.sample.id,
    title: Faker::Books::Dune.title,
    content: Faker::Books::Dune.saying
  )
end

puts 'done!'