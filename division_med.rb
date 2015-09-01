#Using the Ruby language, have the function FormattedDivision
#(num1,num2) take both parameters being passed, divide num1 by 
#num2, and return the result as a string with properly formatted 
#commas and 4 significant digits after the decimal place. For 
#example: if num1 is 123456789 and num2 is 10000 the output should 
#be "12,345.6789". The output must contain a number in the one's 
#place even if it is a zero. 
#Input = 2 & num2 = 3Output = "0.6667"
#Input = 10 & num2 = 10Output = "1.0000"

num1 = gets.chomp.to_f
num2 = gets.chomp.to_f

res = num1/num2
res = res.round(4)
res = res.to_s
t = res.index('.')
zeros = res.length - t
zero_number = 4 - zeros
for j in res.length...res.length+zero_number
	res += '0'
end 
x = res.length-6 
new_str = ""
while x >= 0
	new_str += res[x]
	x -= 1
end
actual_res = new_str.scan(/\d{1,3}/).join(",").reverse
for i in res.length-5..res.length-1
	actual_res += res[i]
end
puts actual_res