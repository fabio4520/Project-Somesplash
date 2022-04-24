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
tech_arr = %w[image\ 29.png image\ 30.png image\ 31.png image\ 32.png image\ 33.png]
5.times do |n|
  tech = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id + 4)
  )
  tech.avatar.attach( io: File.open("db/images/tech/#{tech_arr[n]}"), filename: "tech_#{n}.png")
end

#wallpaper
wallpaper_arr = %w[image\ 16.png image\ 17.png image\ 18.png]
3.times do |n|
  wpaper = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id + 5)
  )
  wpaper.avatar.attach( io: File.open("db/images/wallpapers/#{wallpaper_arr[n]}"), filename: "wpaper_#{n}.png")
end

#fruits and vegetables
fruitveggie_arr = %w[image\ 25.png image\ 26.png image\ 27.png image\ 28.png]
4.times do |n|
  fruitveggie = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id + 1)
  )
  fruitveggie.avatar.attach( io: File.open("db/images/fruits_and_vegetables/#{fruitveggie_arr[n]}"), filename: "fruitveggie_#{n}.png")
end

#nature
nature_arr = %w[image\ 3.png image\ 5.png image\ 6.png image\ 7.png image\ 9.png]
5.times do |n|
  nature = Photo.create(
    title: Faker::Book.title,
    subtitle: Faker::Lorem.paragraph,
    category: Category.find(Category.first.id + 2)
  )
  nature.avatar.attach( io: File.open("db/images/nature/#{nature_arr[n]}"), filename: "nature_#{n}.png")
end

puts "Finish seeding Photos"