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
    @people = []
    alist.each do |i|
      people.push(Person.new i[0],i[1],i[2],i[3])
    end
  end
    
  def print_people
    people.each do |v|
      puts "#{v.id},#{v.full_name},#{v.city},#{v.phone_number}"
    end
  end

  def search_person person_name
    people.each do |v|
      puts "#{v.id},#{v.full_name},#{v.city},#{v.phone_number}" if v.full_name.include? person_name
    end
  end
end
