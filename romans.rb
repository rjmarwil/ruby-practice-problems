class Romans

  hash = {1000 => "M",
          900 => "CM",
          500 => "D",
          400 => "CD",
          100 => "C",
          90 => "XC",
          50 => "L",
          40 => "XL",
          10 => "X",
          9 => "IX",
          5 => "V",
          4 => "IV",
          1 => "I"}

  puts "Type a number and I will convert it to a roman numeral."

  numeral = gets.chomp.to_i
  roman = ""

  hash.each do |value, letter|
    roman << letter*(numeral / value)
    numeral = numeral % value
  end

  puts roman

end
