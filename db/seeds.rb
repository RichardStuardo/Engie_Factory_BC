# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  # User.destroy_all

  Price.destroy_all
  prices = Price.create([{ morning: '100' }, { afternoon: '200' }, { night: '300' }])

  10.times do
  users = User.create!(first_name: Faker::Internet.user_name,
                            last_name: Faker::Internet.user_name,
                            mail: Faker::Internet.email,
                            picture_url: 'https://www.w3schools.com/w3images/avatar2.png',
                            github_url: Faker::Internet.url('github.com'),
                            facebook_url: Faker::Internet.url('facebook.com'),
                            linkedin_url: Faker::Internet.url('linkedin.com'))

  comunities = Community.create!(name: Faker::Internet.user_name,
                                  location: Faker::Internet.location)

  users.student_course_informations.create!(course: Course.order("RANDOM()").first,
                                              average: rand(0..10),
                                              average_assistance: rand(0..100),
                                              average_challenge: rand(0..10),
                                              final_project_grade: rand(0..10),
                                              ingress_date: Faker::Date.forward(23),
                                              egress: Faker::Date.forward(23),
                                              course_complete: true
                                             )
  end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
