#Using the Ruby language, have the function StringScramble(str1,str2)
#take both parameters being passed and return the string true if a 
#portion of str1 characters can be rearranged to match str2, 
#otherwise return the string false. For example: if str1 is 
#{}"rkqodlw" and str2 is "world" the output should return true. 
#Punctuation and symbols will not be entered with the parameters. 
#Input = "cdore" & str2= "coder"Output = "true"
#Input = "h3llko" & str2 = "hello"Output = "false"
def scamble(max, min)
	flag = 0
	min.each_char do |item|
		if max.include? item
			flag = 0
		else
			flag = 1
			break
		end
	end
	if flag == 0
		return true
	else
		return false
	end
end

str_one = gets.chomp
str_two = gets.chomp
if str_one.length > str_two.length
	puts scamble(str_one, str_two)
else
	puts scamble(str_two, str_one)
end