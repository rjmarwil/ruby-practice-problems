class BottlesOfBeer

  puts "type 'sing <number>' and I will sing bottles of beer song starting at that number."

  sing = gets.chomp
  count = sing.split(" ")[-1..1].first.to_i

  if sing.empty?
    puts "I need to know how many bottles to sing!"
  elsif sing.split(" ").first == "sing"
    while count > 0
      puts "#{count} bottles of beer on the wall.  #{count} bottles of beer.  Take one down, pass it around, #{count-1} bottles of beer on the wall"
      count -= 1
    end
  else
    puts "You typed it wrong, dummy."
  end

end
