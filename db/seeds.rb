# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Book.destroy_all
Published.destroy_all

#good omens
@neil_gaiman = Author.create(name: "Neil Gaiman", birth_year: 1960)
@terry_pratchett = Author.create(name: "Terry Pratchett", birth_year: 1948)

@good_omens = Book.create(title: "Good Omens", pages: 288)

Published.create(book_id: @good_omens.id, author_id: @neil_gaiman.id)
Published.create(book_id: @good_omens.id, author_id: @terry_pratchett.id)

puts "done!"
