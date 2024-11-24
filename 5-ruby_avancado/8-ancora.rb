=begin
  Ancora é um caractere especial que indica o início ou o fim de uma string.
=end

# Exemplo 1
strings = ["ruby", "rails", "rake", "rvm", "bundler", "gem", "irb"]

strings.each do |string|
  if string =~ /^r/
    puts "string: #{string} começa com 'r'"
  else
    puts "string: #{string} não começa com 'r'"
  end
end