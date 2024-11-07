=begin
  Escreva um programa que calcule a sequência fibonacci
  de um número. Você deve realizar a leitura de dados de uma variável
  e depois utilizar uma lógica para conseguir gerar a sequência de fibonacci do 
  número.

  formula: F(n) = F(n-1) + F(n-2)

  valores iniciais: F1 = 1, F2 = 1
=end

sequence = [1,1]
puts "Digite um número: "
number = gets.chomp.to_i
while number > sequence[-1]
  sequence << sequence[-1] + sequence[-2]
end
puts "A sequência de fibonacci até #{number} é: #{sequence}" 

# resolução do prof

puts "Digite um número: "
number_othe = gets.chomp.to_i

fib = 1
fib_prev = 0

while fib <= number_othe
  puts fib
  # temp = fib
  # fib += fib_prev
  # fib_prev = temp
  fib_prev, fib = fib, fib + fib_prev
end
