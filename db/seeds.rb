# This file should contain all the record creation needed to seed the database with its default values.

#Customer.create!(fname: 'Marc-Olivier', lname: 'Groleau', email: 'mgroleau@test.com', bname: 'CodeBoxx', primary: '514-555-5555') if Rails.env.development?

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?