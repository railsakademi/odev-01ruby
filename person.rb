class Person
  attr_accessor :id, :full_name, :phone_number, :city

  def initialize(id, full_name, phone_number, city)
    @id = id
    @full_name = full_name
    @phone_number = phone_number
    @city = city
  end

  def to_s
    "#{id},#{full_name},#{phone_number},#{city}"
  end


end
