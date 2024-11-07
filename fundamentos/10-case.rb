# case

puts "Informe a idade: "

age = gets.chomp.to_i

case age
  when 0..2
    puts "Você é bebê!"
  when 3..6
    puts "Você é criança!"
  when 7..12
    puts "Você é pré-adolescente!"
  when 13..18
    puts "Você é adolescente!"
  else
    puts "Você é adulto!"
end