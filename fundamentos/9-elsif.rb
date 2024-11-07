# elsif

puts "Digite o número 1: "
num1 = gets.chomp.to_f

puts "Digite o número 2: "
num2 = gets.chomp.to_f

puts "Digite a operação a ser realizade (+ - * /)"
op = gets.chomp

if op == "+"
  result = num1 + num2
elsif op == "-"
  result = num1 - num2
elsif op == "*"
  result = num1 * num2
elsif op == "/"
  result = num1 / num2
else
  puts "Operação inválida"
  result = 0
end

puts "Resultado é #{'%.2f' % result}"
puts "Resultado é #{result.round(2)}"