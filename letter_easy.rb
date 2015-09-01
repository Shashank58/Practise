str = gets.chomp
new_str = ""
str.each_char do |v|
	if v == 'z'
		new_str += 'a'
	elsif v.match(/^[[:alpha:]]$/)
		new_str += v.next
	else
		new_str += v
	end
end
new_str.each_char.with_index do |v, index|
	if v == 'a' || v == 'e' || v == 'i' || v =='o' || v=='u'
		new_str[index] = v.upcase
	end
end
puts new_str