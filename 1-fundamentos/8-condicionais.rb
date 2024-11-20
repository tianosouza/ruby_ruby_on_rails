# If else


# a = 10
# b = 20

# if a > b
#   puts "#{a} maior que #{b}"
# else
#   puts "#{b} maior que #{a}"
# end

puts "Digite o nome do Filme: "
name = gets.chomp

puts "Digite o ano de lançamaneto do filme: "
year_launch = gets.chomp.to_i

puts "Digite a nota de classificação do filme: "
classification = gets.chomp.to_f

if classification > 8.0 && year_launch > 2015
  puts "O filme #{name} é bom. Recomendo assisti-lo."
else
  puts "O filme #{name} não é bom. Não recomendo assisti-lo."
end