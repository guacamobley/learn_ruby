#write your code here
def add a, b
	return a.to_f + b.to_f
end


def subtract a, b
	return a.to_f - b.to_f

end

def sum arr
	return arr.sum
end

def multiply *args
	case args.size
	when 1
		result = 1.0
		args[0].each do |number|
			result = result * number.to_f
		end
		return result
	when 2
		return args[0].to_f * args[1].to_f
	end
end

def power x,n
	return x ** n;
end

def factorial n
	if n < 2
		return 1
	end

	return n * factorial(n-1)
end