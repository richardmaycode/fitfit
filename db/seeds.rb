# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
DEFAULT_EQUIPMENT = %W(battle_ropes	bench dumbbell fitness_ball foam_roller jump_rope kettlebell medicine_ball pull_seld punching_bag push_sled resistance_band yoga_mat)

DEFAULT_EQUIPMENT.each do |equipment|
    Equipment.create! name: equipment.tr("_", " ").titleize
end