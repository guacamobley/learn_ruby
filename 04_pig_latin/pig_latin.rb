#write your code here

def translate phrase
	arr = phrase.split(" ")
	newArr = arr.map {|word| translate_word word}
	return newArr.join(" ")
end


def translate_word word
	vowels = ["a","e","i","o","u"]
	if vowels.include? word.slice(0) 
		return word + "ay"
 	elsif word.slice(0) == "q"
 		if word.slice(1) == "u"
 			return consonant_transform(word,2)
 		else
 			return consonant_transform(word,1)
 		end	
 	elsif vowels.include? word.slice(1)
 		return consonant_transform(word,1)
 	elsif word.slice(1) == "q"
 		if word.slice(2) == "u"
 			return consonant_transform(word,3)
 		else
 			return consonant_transform(word,2)
 		end
 	elsif vowels.include? word.slice(2)
 		return consonant_transform(word,2)
 	elsif vowels.include? word.slice(3)
 		return consonant_transform(word,3)
 	else
 		return consonant_transform(word,1)
 	end


end

def consonant_transform word, number
	return word.slice(number,word.length) + word.slice(0,number) + "ay"
end
