=begin
  exclusão de caracteres usando expressões regulares
=end

strings = ["ruby", "rails", "rake", "rvm", "bundler", "gem", "irb"]

strings.each do |string|
  if string =~ /^[âeiou]/
    puts "string: #{string} contém consoantes"
  else
    puts "string: #{string} não contém vogais ou outros caracteres"
  end
end

# Exemplo 2
strings2 = "Aprenda Ruby e Ruby e seja feliz"

nova_string = strings2.sub(/Ruby/, 'Python')
puts nova_string
# ou
nova_string2 = strings2.gsub(/Ruby/, 'Python')
puts nova_string2