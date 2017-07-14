# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@category = Category.find_or_create_by(name: "names", description: "information")

10.times do
	@category.products.create(name: Faker::Name.first_name, price: 1, quantity: 100)
end
