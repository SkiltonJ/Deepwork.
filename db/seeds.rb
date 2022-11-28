# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Detroying topics"
# Topic.destroy_all

# @topics = [
#   "History",
#   "Mathematics",
#   "Physics",
#   "Biology",
#   "Spanish"
# ]

# 5.times do
#   topic = Topic.new(
#   name: @topics.sample
# )
#   topic.save
#   puts "Created #{topic.name}"
# end

puts "Destroying themes"
Theme.destroy_all

Theme.create(name: "quickstart", study_duration: 30, render: "themes/snow_theme", thumbnail: "background_snap.png")

# When creating a new theme, add render: "<filename.html.erb>"" and thumbnail: "image you used as your background".
