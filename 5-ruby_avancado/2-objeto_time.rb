puts Time.new
puts Time.now

puts Time.new(1994)
puts Time.new(1994, 10)
puts Time.new(1994, 10, 1)
puts Time.new(1994, 10, 1, 12)
puts Time.new(1994, 10, 1, 12, 30)
puts Time.new(1994, 10, 1, 12, 30, 45)

some_time = Time.new(1994, 10, 1, 12, 30, 45)
puts some_time.year
puts some_time.month
puts some_time.day
puts some_time.hour
puts some_time.min
puts some_time.sec
puts some_time.usec
puts some_time.tv_sec
puts some_time.wday
puts some_time.yday
puts some_time.zone
puts some_time.utc?

puts some_time.strftime('%Y-%m-%d')
puts some_time.strftime('%Y/%m/%d')
puts some_time.strftime('%Y-%m-%d %H:%M:%S')
puts some_time.strftime('%Y/%m/%d %H:%M:%S')
puts some_time.strftime('%Y-%m-%d %H:%M:%S %z')
puts some_time.strftime('%Y/%m/%d %H:%M:%S %z')

puts some_time.sunday?
puts some_time.monday?
puts some_time.tuesday?
puts some_time.wednesday?
puts some_time.thursday?
puts some_time.friday?
puts some_time.saturday?

# Adição e subtração de tempo

puts some_time + 1

# 60 segundos em minutos
# 60 minutos em horas
# 24 horas em dias
# 7 dias em semanas
# 30 dias em meses

start_of_year = Time.new(1994)

puts start_of_year + (365 * 24 * 60 * 60)
