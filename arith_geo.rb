#Using the Ruby language, have the function ArithGeoII(arr) take the 
#array of numbers stored in arr and return the string "Arithmetic" 
#if the sequence follows an arithmetic pattern or return 
#{}"Geometric" if it follows a geometric pattern. If the sequence 
#doesn't follow either pattern return -1. An arithmetic sequence is 
#one where the difference between each of the numbers is consistent, 
#where as in a geometric sequence, each term after the first is 
#multiplied by some constant or common ratio. Arithmetic example: 
#[2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative 
#numbers may be entered as parameters, 0 will not be entered, 
#and no array will contain all the same elements. 
#Input = 5,10,15Output = "Arithmetic"
#Input = 2,4,16,24Output = -1
def Arithmetic(arr)
	k = []
	flag = 0
	main_flag = 0
	for i in 0...arr.length-1
		x = arr[i+1] - arr[i]
		k.each do |item|
			if x == item
				next
			else
				flag = 1
				break
			end
		end
		if flag == 0
			k.push(x)
			next
		else
			main_flag = 1
			break
		end
	end
	if main_flag == 1
		return false
	else
		return true
	end
end

def Geometric(arr)
	k = []
	flag = 0
	main_flag = 0
	for i in 0...arr.length-1
		x = arr[i+1] / arr[i]
		k.each do |item|
			if x == item
				next
			else
				flag = 1
				break
			end
		end
		if flag == 0
			k.push(x)
			next
		else
			main_flag = 1
			break
		end
	end
	if main_flag == 1
		return false
	else
		return true
	end
end


arr = gets.chomp.split(/ /)
arr.each_with_index {|v, i| arr[i] = v.to_i}
arith = Arithmetic(arr)
if arith
	puts "Arithmetic"
elsif Geometric(arr)
	puts "Geometric"
else
	puts "-1"
end
