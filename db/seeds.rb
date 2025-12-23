# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 Creando usuario master..."

master_email = ENV.fetch("MASTER_EMAIL", "master@admin.com")
master_password = ENV.fetch("MASTER_PASSWORD", "Admin1234")

master = User.find_or_initialize_by(email: master_email)

if master.new_record?
  master.password = master_password
  master.password_confirmation = master_password
  master.role = "master"
  master.save!
  puts "✅ Usuario master creado: #{master_email}"
else
  puts "ℹ️ Usuario master ya existe: #{master_email}"
end