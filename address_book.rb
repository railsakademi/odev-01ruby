require 'csv'
require './person'

class AddressBook
	attr_accessor :people
  def initialize(csv_path)
    @people = []
  	CSV.read(csv_path)[1..-1].each do |p|
      @people.push(Person.new(p[0], p[1], p[2], p[3]))
    end
  end

  def print_people
  	@people.each do |p|
  		puts p.to_s
  	end
  end

  def search_person(person_name)
  	puts @people.find{|p| p.full_name.include?person_name}.to_s
  end
end
