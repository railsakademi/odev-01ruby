class AddressBook
  def initialize(csv_path)
    require 'csv'
    @@book = CSV.read(csv_path)
  end

  def print_people
    puts "Kisi listesi"
    puts "-------------"
   @@book.each do |people| 
     puts people[0]+" "+people[1]+" "+people[2]+" "+people[3]
   end
   puts "--------------"
 end

  def search_person(person_name)
    puts "Aranilan kisi: " + person_name
    found_people = "Kisi bulunamadi."
    @@book.each do |people|
      if people[1].include?person_name
        found_people = people
      end
    end
    puts found_people
  end
end
