birthday = Time.new(1994, 10, 12)
summer = Time.new(1994, 10, 12)
winter = Time.new(1994, 6, 12)
independece_day = Time.new(1994, 7, 4)

puts birthday == summer
puts birthday == winter
puts birthday == independece_day
puts birthday != summer
puts birthday != winter
puts birthday != independece_day
puts birthday > summer
puts birthday < summer
puts birthday >= summer
puts birthday <= summer
puts birthday == summer
puts summer == birthday
puts summer == summer
puts summer != summer
puts summer > summer
puts summer < summer
puts summer >= summer
puts summer.between?(winter, summer)
puts summer.between?(summer, winter)
puts summer.between?(independece_day, summer)
puts summer.between?(summer, independece_day)
puts summer.between?(summer, summer)
