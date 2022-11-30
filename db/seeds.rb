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

Theme.create(name: "Baroque Forest", study_duration: 25, render: "themes/theme_4", thumbnail: "assets/wave_forest_thumbnail.png");
Theme.create(name: "Gamma", study_duration: 25, render: "themes/theme_1", thumbnail: "assets/gamma_thumbnail.png");
Theme.create(name: "Baroque", study_duration: 25, render: "themes/theme_2", thumbnail: "assets/baroque_thumbnail.png");
Theme.create(name: "Browne", study_duration: 25, render: "themes/theme_3", thumbnail: "assets/brown_thumbnail.png");
Theme.create(name: "Mountain Views", study_duration: 60, render "themes/mountain", thumbnail: "assests/mountain.png");
Theme.create(name: "Rainforest", study_duration: 45, render: "themes/forest", thumbnail: "assets/forest.png");
Theme.create(name: "quickstart", study_duration: 30, render: "themes/snow_theme", thumbnail: "assets/background_snap.png")

# When creating a new theme, add render: "<filename.html.erb>"" and thumbnail: "image you used as your background".
