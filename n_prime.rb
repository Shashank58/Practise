#Using the Ruby language, have the function PrimeMover(num) return 
#the numth prime number. The range will be from 1 to 10^4. For 
#example: if num is 16 the output should be 53 as 53 is the 16th 
#prime number. 
#Input = 9Output = 23
#Input = 100Output = 541
require 'prime'

number = gets.chomp.to_i
count = 1
prime_num = 0
if number < 2
	puts "Invalid number please enter another one"
else
	for i in 2..100000
		if count <= number
			if Prime.prime?(i)
				count += 1
				prime_num = i
			else
				next
			end
		else
			break
		end
	end
	puts prime_num
end