=begin
  1- Blocks
  Blocos são trechos anônimos de código que aceitam
  entradas de argumentos e retornam um determinado valor
=end

def hello
  yield
end

hello { puts "hello world" }

def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three { |number| puts number * 10 }

# 2- Função de potência de um número

power = lambda { |num| num ** 2 }
puts power.call(4)

# 3- Função que verifica se o número é par

pair = lambda { |x| x % 2 == 0 }
puts pair.call(5)

# 4- Função que divide um número por outro 
div_num = lambda { |x, y| x / y }
puts div_num.call(10, 2)