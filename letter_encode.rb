#Using the Ruby language, have the function NumberEncoding(str) take 
#the str parameter and encode the message according to the following 
#rule: encode every letter into its corresponding numbered position 
#in the alphabet. Symbols and spaces will also be used in the input. 
#For example: if str is "af5c a#!" then your program should return 
#1653 1#!.
#Input = "hello 45"Output = 85121215 45
#Input = "jaj-a"Output = 10110-1

str = gets.chomp
arr = ('a'..'z').to_a
new_str = ""
str.each_char do |v|
	if v.match(/^[[:alpha:]]$/)
		new_str += (arr.index(v) + 1).to_s
	else
		new_str += v
	end
end
puts new_str