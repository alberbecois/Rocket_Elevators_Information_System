# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

20.times do
    Lead.create(
        full_name: Faker::FunnyName.unique.name_with_initial,
        business: Faker::Company.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        project_name: Faker::Address.community,
        description: Faker::Lorem.sentence,
        department: ["Residential","Corporate","Hybrid"].sample,
        message: Faker::Lorem.paragraph,
        created_at: Faker::Date.between(from: 700.days.ago, to: Date.today),
        updated_at: Faker::Date.between(from: 700.days.ago, to: Date.today)
    )
end