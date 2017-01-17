def get_cost_of_tile
  puts "Enter cost of tile"
  cost = gets.chomp.to_i
  puts "Enter width of area"
  width = gets.chomp.to_i
  puts "Enter length of area"
  length = gets.chomp.to_i

  puts "$#{cost * width * length}"
end

get_cost_of_tile