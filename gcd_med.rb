#Using the Ruby language, have the function Division(num1,num2) take both parameters being passed and return the 
#Greatest Common Factor. That is, return the greatest number that evenly goes into both numbers with no remainder. 
#For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. The range for both parameters will 
#be from 1 to 10^3. 
#Input = 7 & num2 = 3Output = 1
#Input = 36 & num2 = 54Output = 18

nums = gets.chomp.split(/ /)
nums[0] = nums[0].to_i
nums[1] = nums[1].to_i
puts nums[0].gcd(nums[1])