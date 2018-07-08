# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Influencer.destroy_all

10.times do
  influencer = Influencer.new(
   influencer_full_name: Faker::Name.name,
   influencer_instagram_username: Faker::Name.name,
   statistics_followers:"30000",
   statistics_engagement:"10",
  )
  influencer.save
end

