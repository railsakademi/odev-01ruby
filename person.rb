class Person
  attr_accessor :id
  attr_accessor :full_name
  attr_accessor :city
  attr_accessor :phone_number

  def initialize id,full_name,city,phone_number
    @id, @full_name, @city, @phone_number = id, full_name, city, phone_number
  end
end
