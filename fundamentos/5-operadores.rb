puts "Digite o primeiro número: "
num1 = gets.chomp.to_i

puts "Digite o segundo número: "
num2 = gets.chomp.to_i

# 1- Operadores aritiméticos

sum = num1 + num2
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2
exp = num1 ** num2

puts sum, subt, div, mult, mod, exp

# 2- Operadores de atribuição

num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 /= 1 # num1 = num1 / 1
num1 *= 1 # num1 = num1 * 1

# 3- Atribuição paralela

a, b = 5, 4
a, b = b, a

# 4- Operadores de comparação

bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
not_equal = num1 != num2
greater_or_equal = num1 >= num2
less_or_equal = num1 <= num2

# 5- Operadores Lógico

puts ((2 > 4) and (3 > 1))
puts ((2 > 4) or (3 > 1))

# 6- Operadores Especiais

print (1..5).to_a # [ 1,2,3,4,5 ]
print ('a'..'z').to_a # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

# 7- Precedência de Operadores
# Seguindo a mesma da matemática

puts 3 + 1 * 2
puts (3 + 2) * 2

# 8- Operador Binary left shit

name = ""
name << "Fulano"
name << "Sicrano"

puts name # FulanoSicrano