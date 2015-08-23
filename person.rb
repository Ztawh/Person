class Person
	def initialize(name = "Amanda")
		
		@name = name
	end

	def name
		@name
	end

	def age
		@age
	end

	def gender
		@gender
	end

	def set_name(name)
		unless name == ""
			name = nil
		end
		@name = name
	end

	def set_age(age)
		unless age == Integer
			age = nil
		end
		@age = age
	end

	def set_gender(gender)
		if gender != "female" && gender != "male"
			gender = nil
		end
		@gender = gender
	end
end
