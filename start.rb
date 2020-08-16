Dir[File.expand_path('lib/*.rb', File.dirname(__FILE__))].each do |file|
    require file
end
Dir[File.expand_path('lib/errors/*.rb', File.dirname(__FILE__))].each do |file|
    require file
end
require 'pry'

max_x = 0
max_y = 0

puts "Select map size"
puts "1) 20x20"
puts "2) 11x11"
puts "3) 5x5"
puts "4) custom"

user_choice = gets.chomp

if user_choice == "1"
    max_x = max_y = 20
elsif user_choice == "2"
    max_x = max_y = 11
elsif user_choice == "3"
    max_x = max_y = 5
elsif user_choice == "4"
    begin
        puts "Enter size (only one number)"
        max_x = max_y = Integer(gets.chomp)
    rescue ArgumentError
        max_x = max_y = 11
    end
else
    max_x = max_y = 11
end

game = Game.new(max_x, max_y)
game.start