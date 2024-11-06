puts "Informe o nome do filme: "
name = gets.chomp # Sempre vai retornar uma string!

puts "Informe o ano de lançament0: "
year_launch = gets.chomp.to_i # Aqui converto para inteiros

puts "Informe o preço do filme: "
price = gets.chomp.to_f # Aqui converto para float

plan_included = false

puts "name: #{name.class}, year: #{year_launch.class}, price: #{price.class}, plan: #{plan_included.class}"
