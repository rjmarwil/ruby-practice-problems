class Grandma

  puts "Write something."

  statement = gets.chomp

  if statement.upcase == statement
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP SONNY!"
  end

end
