#Using the Ruby language, have the function TimeConvert(num) take the 
#num parameter being passed and return the number of hours and 
#minutes the parameter converts to (ie. if num = 63 then the output 
#should be 1:3). Separate the number of hours and minutes with a 
#colon. 
#Input = 126Output = "2:6"
#Input = 45Output = "0:45"

time = gets.chomp.to_i
hours = time/60
minutes = time % 60
puts "#{hours}:#{minutes}"