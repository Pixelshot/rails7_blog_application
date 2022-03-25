# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'Flash', email: 'barry@mail.com', password: 'password', password_confirmation: 'password')
User.create(name: 'John Doe', nameemail: 'jdoe@mail', password: 'password', password_confirmation: 'password')

(1..3).each { |i| Post.create(title: "Post Number #{i}", body: "Some context for post ##{i}", user_id: User.first.id) }
(1..3).each { |i| Post.create(title: "Post Number #{i}", body: "Some context for post ##{i}", user_id: User.second.id) }
