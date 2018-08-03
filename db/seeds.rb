# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thomas = User.create!(username: 'toto', email: 'toto@toto.com', password: 'azerty', password_confirmation: 'azerty')
gaga = User.create!(username: 'gaga', email: 'gaga@gaga.com', password: 'azerty', password_confirmation: 'azerty')
