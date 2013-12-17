require_relative "league"
require_relative "engine"

engine = Engine.new

puts "Welcome to Sportspedia; find the top salaries in your favorite league! Powered by USA Today." 

puts "Select your favorite league by entering its number:"
puts "MLB = 1"
puts "NFL = 2"
puts "NBA = 3"
puts "NHL = 4"

engine.get_input

while engine.test_input == false 

puts "That's not correct. You need to put the number of your league, as shown on the list."
engine.get_input

end

	engine.get_from_salaries
	puts "Here are the top 5 salaries in the history of your league:"
	puts engine.display_salaries

