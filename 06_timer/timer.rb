class Timer
  #write your code here

  def initialize
  	@seconds = 0
  	@time_string = "00:00:00"
  end

  def seconds=(seconds_to_set)

  	@seconds = seconds_to_set.round

  	hours_to_set = @seconds/3600
  	minutes_to_set = @seconds/60%60
  	seconds_to_set = @seconds%60

  	@time_string = format(hours_to_set) + ":" + format(minutes_to_set) + ":" + format(seconds_to_set)
  end

  def seconds
  	return @seconds
  end

  def time_string
  	return @time_string
  end

  private

  def format number
  	if number.to_s.length == 2
  		return number.to_s
  	else
  		return "0" + number.to_s
  	end
  end

end
