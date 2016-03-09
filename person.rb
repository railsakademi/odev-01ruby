class Person
	attr_accessor :id
	attr_accessor :full_name
	attr_accessor :phone_number
	attr_accessor :city

	def initialize(id, name, number, city)
		@id = id
		@full_name = name
		@phone_number = number
		@city = city
	end

	def to_s()
		[@id, @full_name, @phone_number, @city].join(',')
	end


end
