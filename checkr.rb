require "./person"

def print_person(person)
  puts "#{person.name} is #{person.age} years old and #{person.gender}"
end

def test_direct_access(object, method)
  if object.respond_to?(method)
    puts "You have cheated! The Person class should not respond to '#{method}' directly!"
  end
end

robert = Person.new("Robert")
robert.set_age(30)
robert.set_gender(:male)

# Test that you can't set properties directly
[:name=, :age=, :gender=].each do |method|
  test_direct_access(robert, method)
end

print_person(robert)

amanda = Person.new
amanda.set_name("Amanda")
amanda.set_age(22)
amanda.set_gender(:female)

print_person(amanda)

# Now for bonus point checking...
simon = Person.new
simon.set_name(2)
puts "Bonus point for (maybe...) checking name value!" if simon.name.nil?
simon.set_age("25")
puts "Bonus point for (maybe...) checking age value!" if simon.age.nil?
simon.set_gender(false)
puts "Bonus point for (maybe...) checking gender value!" if simon.gender.nil?