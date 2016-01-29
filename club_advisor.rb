# determine what club to use based on the distance you are from the hole
# yardage in the list is the shortest distance at which you should use that club
# notice that the yardage in the list are in decending order from largest to smallest

require 'pry'

clubs = {
  "driver" =>         200,
  "fourwood" =>       180,
  "five wood" =>      170,
  "two iron" =>       170,
  "three iron" =>     160,
  "four iron" =>      150,
  "five iron" =>      140,
  "six iron" =>       130,
  "seven iron" =>     120,
  "eight iron" =>     110,
  "nine iron" =>      95,
  "pitching wedge" => 80,
  "sand Wedge" =>     20,
  "putter" =>         0
}

# get yardage from user input
puts "How far away are you from the hole?"
current_yardage = gets.chomp.to_i

clubs.each do |club, yardage|
  if yardage <= current_yardage
    puts "Use the #{club}!"
    break
  end
end
