require 'date'

puts Date.new(1994)
puts Date.new(1994, 10)
puts Date.new(1994, 10, 12)

birthday = Date.new(1994, 10, 12)
puts birthday.year
puts birthday.month
puts birthday.day
puts birthday.strftime('%Y-%m-%d')
puts birthday.strftime('%B %d, %Y')

# data.wday
# 0 - Domingo
# 1 - Segunda
# 2 - Terça
# 3 - Quarta
# 4 - Quinta
# 5 - Sexta
# 6 - Sábado
# puts birthday.wday
# puts birthday.sunday?
# puts birthday.monday?
# puts birthday.tuesday?
# puts birthday.wednesday?
# puts birthday.thursday?
# puts birthday.friday?
# puts birthday.saturday?