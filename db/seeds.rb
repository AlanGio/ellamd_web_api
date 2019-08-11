# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read('lib/input/formulations.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
Formulation.create(row.to_hash)
end

csv_text = File.read('lib/input/ingredients.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
Ingredient.create(row.to_hash.slice('name', 'minimum_percentage', 'maximum_percentage', 'description'))
end

csv_text = File.read('lib/input/formulation_ingredients.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
FormulationsIngredient.create(row.to_hash)
end