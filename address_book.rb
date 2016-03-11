require 'csv'

class AddressBook

  def initialize(csv_path)
    @people = []
    populate_people_array(csv_path)
  end

  def print_people
    @people.each do |person|
      print_person person
    end
  end

  def print_person person
    print "#{person.id},"
    print "#{person.full_name},"
    print "#{person.phone_number},"
    puts  "#{person.city}"
  end

  def search_person(person_name)
    @people.each do |person|
      if person.full_name.include?(person_name)
        print_person person
      end
    end
  end

  private
    def populate_people_array(csv_path)
      CSV.foreach(csv_path) do |row|
        @people << Person.new(row[0], row[1], row[2], row[3])
      end

      @people.shift # removo the header
    end

    def populate_people_array_ex(csv_path)
      fh = open(csv_path)
      fh.readline # read the header
      while (line = fh.gets) != nil
        line.chomp! # remove new line character
        infoArray = line.split(',')
        person = Person.new
        person.id = infoArray[0]
        person.full_name = infoArray[1]
        person.phone_number = infoArray[2]
        person.city = infoArray[3]
        @people.push person
      end
    end   
end
    
