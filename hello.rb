require 'csv'

class Hello

  birthday_data = CSV.read('birthday_data.csv')
  names = ""
  birthday = ""
  age = ""

  puts "Tell me a first or last name and I'll give you their birthday"

  name = gets.chomp

  birthday_data.each do |p|
   if p.include? name
      names = "#{p[1]} #{p[0]}"
    end
   if p.include? name
     birthday = p[2]
   end
   if p.include? name
     year, month, day = p[2].split('/')
     age = ((Time.now - Time.local(year,month,day))/60/60/24/365).to_i
   end
  end

  puts "Hello, #{names}.  You were born on #{birthday} and are #{age} years old.  Have a day!"

end
