# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |ind|
  User.create(first_name: "Test User #{ind}", email: "user#{ind}@gmail.com", password: "password#{ind}")
end
User.first(3).each do |user|
  ((Date.today - 10.days)..Date.today).each do |test_date|
    2.times do 
      user.blood_gulcose_readings.create value: rand(10 ** 1), reading_type: 'mg' , date: test_date
    end
  end
end
