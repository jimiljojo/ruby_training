def substrings(str,dictionary)
	substr = Hash.new(0)
	words = str.split(' ')
	words.each do |word|
		dictionary.map { |d_word|  
			if !(word =~ /#{d_word}/).nil?					#check user's string with all dictionary words via regex
				substr[d_word]+=1							#if a match is found, increment the appropriate  value based on key
			end
		}
	end
	return substrings
end

puts "Enter dictionary seperated by commas : "
dictionary = gets.chomp.split(',')
puts "Enter the string you need to check"
str = gets.chomp
puts substrings(str, dictionary)
