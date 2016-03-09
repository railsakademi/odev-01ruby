require 'csv'
require './person.rb'

class AddressBook
  attr_accessor :people
  
  def initialize csv_path
    read = CSV.read csv_path
    read.shift
    self.beautifier read
  end
  
  def beautifier alist
    @people = {}
    alist.each do |i|
      key = i[1].split ' '
      people[key[0]] = Person.new i[0],i[1],i[2],i[3]
    end
  end
    
  def print_people
    people.each do |k,v|
      puts "#{v.id},#{v.full_name},#{v.city},#{v.phone_number}"
    end
  end

  def search_person person_name
    r = people[person_name]
    puts "#{r.id},#{r.full_name},#{r.city},#{r.phone_number}"
  end
end
