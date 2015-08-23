class Person
	attr_reader :name, :age, :gender
	
	def initialize(name = "Amanda")
		@name = name
	end

	def set_name(name)
		if name.is_a?(Integer)
			name = nil
		end
		@name = name
	end

	def set_age(age)
		if age.is_a?(Integer)
			@age = age
		end
		age = nil
	end

	def set_gender(gender)
		if gender == :female || gender == :male
			@gender = gender
		end
		gender = nil
	end
end
