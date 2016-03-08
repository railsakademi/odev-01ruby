require './address_book.rb'
require './person.rb'

address_book = AddressBook.new("people.csv")
address_book.print_people
address_book.search_person("Melahat")
