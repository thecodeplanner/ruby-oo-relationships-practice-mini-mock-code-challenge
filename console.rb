require 'pry'
require_relative './book'
require_relative './author'

# binding.pry


melissa = Author.new("Melissa")
nick = Author.new("Nick")

abc = Book.new("ABCs", melissa, 75)
toast = Book.new("Breakfasts", melissa, 150)
poems = Book.new("Poems", nick, 300)

melissa.write_book("Cool Cats", 200)
p nick.total_words
p Author.most_words 

