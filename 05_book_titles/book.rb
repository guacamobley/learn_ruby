class Book
# write your code here
	Little_words = ["a","an","the","and","or","but","in","of","on","over"]

	def initialize
		@title = ""
	end

	def title=(words)
		arr = words.split(" ").map.with_index {|word, index| titleize(word, index)}
		@title = arr.join(" ")
	end

	def title
		return @title
	end


	private

	def titleize(word, index)
		if index == 0
			return word.capitalize
		elsif Little_words.include? word
			return word
		else
			return word.capitalize
		end
	end
end
