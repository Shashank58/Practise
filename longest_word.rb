#Using the Ruby language, have the function LongestWord(sen) take the
#sen parameter being passed and return the largest word in the string.
#If there are two or more words that are the same length, return the
#first word from the string with that length. Ignore punctuation and 
#assume sen will not be empty. 

sen = gets.chomp.split(/\W+/)
if sen.length == 1
	puts sen
else
	max = ""
	sen.each do |v|
		if v.length > max.length
			max = v
		end
	end
	puts max
end