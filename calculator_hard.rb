#Using the Ruby language, have the function Calculator(str) take the 
#str parameter being passed and evaluate the mathematical expression 
#within in. For example, if str were "2+(3-1)*3" the output should 
#be 8. Another example: if str were "(2-0)(6/2)" the output should 
#be 6. There can be parenthesis within the string so you must 
#evaluate it properly according to the rules of arithmetic. The 
#string will contain the operators: +, -, /, *, (, and ). If you 
#have a string like this: #/#*# or #+#(#)/#, then evaluate from 
#left to right. So divide then multiply, and for the second one 
#multiply, divide, then add. The evaluations will be such that 
#there will not be any decimal operations, so you do not need to 
#account for rounding and whatnot. 
#Input = "6*(4/2)+3*1" Output = "15"
#Input = "6/3-1" Output = "1"

def evaluate(exp)
	while x = exp =~ /[\*\/]/
		res = 0
		case exp[x]
		when '*'
			k, p = x-1, ""
			num1, num2 = 0, 0
			while k >= 0
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k -= 1
				else
					break
				end
			end
			num1 = p.reverse.to_i
			k, p = x+1, ""
			while k < exp.length
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k += 1
				else
					break
				end
			end
			num2 = p.to_i
			res = num1 * num2
			res = res.to_s
			exp = exp.sub(/\d*\*\d*/, res)
		when '/'
			k, p = x-1, ""
			num1, num2 = 0, 0
			while k >= 0
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k -= 1
				else
					break
				end
			end
			num1 = p.reverse.to_i
			k, p = x+1, ""
			while k < exp.length
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k += 1
				else
					break
				end
			end
			num2 = p.to_i
			res = num1 / num2
			res = res.to_s
			exp = exp.sub(/\d*\/\d*/, res)
		end
	end
	while x = exp =~ /[\+\-]/
		res = 0
		case exp[x]
		when '+'
			k, p = x-1, ""
			num1, num2 = 0, 0
			while k >= 0
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k -= 1
				else
					break
				end
			end
			num1 = p.reverse.to_i
			k, p = x+1, ""
			while k < exp.length
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k += 1
				else
					break
				end
			end
			num2 = p.to_i
			res = num1 + num2
			res = res.to_s
			exp = exp.sub(/\d*\+\d*/, res)
		when '-'
			k, p = x-1, ""
			num1, num2 = 0, 0
			while k >= 0
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k -= 1
				else
					break
				end
			end
			num1 = p.reverse.to_i
			k, p = x+1, ""
			while k < exp.length
				if exp[k] != '*' && exp[k] != '/' && exp[k] != '+' && exp[k] != '-'
					p += exp[k]
					k += 1
				else
					break
				end
			end
			num2 = p.to_i
			res = num1 - num2
			res = res.to_s
			exp = exp.sub(/\d*\-\d*/, res)
		end
	end
	exp
end

str = gets.chomp
new_str = str.scan(/\(([0-9\+\-\*\/]+)\)/)
if !new_str.empty?
	new_str.each do |v|
		v = v.to_s
		v = v.scan(/[^\[\]"]/)
		v = v.join("")
		resu_parantheses = evaluate(v)
		#puts resu_parantheses
		str = str.sub(/\(([0-9\+\-\*\/]+)\)/, resu_parantheses)
	end
end	
x = evaluate(str)
puts x