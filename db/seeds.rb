# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Seed Categories

puts "Start seeding Categories"

Photo.destroy_all
Category.destroy_all

names_cover = %w[animals_cover.png fruits_and_vegetables_cover.png nature_cover.png people_cover.png tech_cover.png wallpaper_cover.png]
6.times do |n|
  category = Category.create(
    name: %w[Animals Fruits\ and\ vegetables Nature People Tech Wallpaper ][n], 
    description: Faker::Lorem.paragraph
  )
  category.avatar.attach( io: File.open("db/images/covers/#{names_cover[n]}"), filename: "#{names_cover[n]}.png")
end

puts "Finish seeding"
###########################
puts "Start seeding Photos"

#animals
animal_arr = %w[image\ 8.png image\ 35.png image\ 36.png image\ 37.png image\ 38.png]
5.times do |n|
  animal = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id)
  )
  animal.avatar.attach( io: File.open("db/images/animals/#{animal_arr[n]}"), filename: "animal_#{n}.png")
end

#people
people_arr = %w[image\ 19.png image\ 20.png image\ 21.png image\ 22.png image\ 23.png image\ 24.png]

6.times do |n|
  people = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id + 3)
  )
  people.avatar.attach( io: File.open("db/images/people/#{people_arr[n]}"), filename: "people_#{n}.png")
end

#tech

puts "Finish seeding Photos"