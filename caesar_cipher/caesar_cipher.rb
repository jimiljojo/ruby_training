def caesar_cipher(string,shift)
	alpha = ('a'..'z').to_a
	alpha_index = Hash.new()
	alpha.each_with_index do |alphabet,i|						#Created a hash of alphabets => numbers, from 1 to 26
		alpha_index[alphabet]= i+1
	end
	letters = string.downcase.split(//)							#split user string into array of letters and symbols
	encrypt_string =''
	letters.each do |letter|
		if alpha_index[letter].nil?								#if symbol, put it as is
		 	encrypt_string +=letters
		elsif (alpha_index[letter].to_i+shift)>26				#if the index after adding the shift is above 26 (wapping from z to a)
			new_index = (alpha_index[letter].to_i+shift)-26
			encrypt_string += alpha_index.key(new_index)
		else													#add shift to the corresponding number from the hash and add it to new string as a letter again 
			new_index = alpha_index[letter].to_i+shift
			encrypt_string += alpha_index.key(new_index)
		end
	end
	return encrypt_string.capitalize							#return capitalized decrypted string
end

puts caesar_cipher("What a string!",5)