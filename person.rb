class Person
	attr_reader :full_name
	def initialize(params = {})
		@id = params[:id] 
		@full_name = params[:full_name]
		@phone_number = params[:phone_number]
		@city = params[:city]
	end

	def to_s
		"#{@id},#{@full_name},#{@phone_number},#{@city}"
	end

end
