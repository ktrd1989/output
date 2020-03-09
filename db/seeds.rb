# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book = Category.create(:name=>"書籍")

book_1 = book.children.create(:name=>"趣味・実用")
book_2 = book.children.create(:name=>"ビジネス・経済")



