# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ItemCategory.delete_all

seed_list = ["Food - Meats", "Food - Vegetarian", "Food - Sweets", "Flowers", "Clothes", "Linens", "Other"]

n = 1

while n <= seed_list.length

	ItemCategory.create(name: seed_list[n-1])
	n+=1

end
