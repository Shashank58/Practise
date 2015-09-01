#Using the Ruby language, have the function LetterCountI(str) take 
#the str parameter being passed and return the first word with the 
#greatest number of repeated letters. For example: "Today, is the 
#greatest day ever!" should return greatest because it has 2 e's 
#(and 2 t's) and it comes before ever which also has 2 e's. If 
#there are no words with repeating letters return -1. Words will be 
#separated by spaces.
#Input = "Hello apple pie"Output = "Hello"
#Input = "No words"Output = -1 

str = gets.chomp.split(/ /)
letter_count = {}
str.each do |item, index|
	item.downcase!
	individual_word = Hash.new(0)
	item.each_char do |v|
		individual_word[v] += 1
	end
	if individual_word.values.max > 1
		letter_count[item] = individual_word.values.max
	end
end
if letter_count.empty?
	puts "-1"
else
	res = letter_count.sort_by {|k, v| -v}
	puts res[0][0]
end