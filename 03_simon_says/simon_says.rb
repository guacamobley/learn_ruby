#write your code here



def echo phrase
	return phrase
end



def shout phrase
	return phrase.upcase
end



def repeat word, number=2
	phrase = ""
	number.times do 
		phrase = phrase + " " + word
	end
	return phrase.strip!
end


def start_of_word word, number
	return word.slice(0,number)
end


def first_word phrase
	return phrase.split(" ")[0]
end



def titleize phrase
	little_words = ["the","a","an","over","of","in","on","of","and","or","but","not"]
	arr = phrase.split(" ")
	arr.each_with_index {|word, index|
		if index == 0
			word.capitalize!
		elsif little_words.include? word.downcase
			next
		else
			word.capitalize!
		end
	}
	return arr.join(" ")
end
