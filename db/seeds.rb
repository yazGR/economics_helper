# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Admin", last_name: "Economics", email: "admin@test.com", password: "123456", role: :admin)
User.create(name: "Yazmin", last_name: "Gomez", email: "yaz.gomezr@gmail.com", password: "123456", role: :user)