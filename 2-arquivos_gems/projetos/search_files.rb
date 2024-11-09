# Alternativa 1
require 'debug'

# def search(key)
#   Dir.glob('../data/*.txt') do |file|
#     f = File.open(file)
#     f.each_with_index do |line, index|
#       if line.include?(key)
#         return file, index
#       end
#     end
#     f.close
#   end
# end

# puts "Buscando Palavras em Arquivos"
# puts "Digit uma palavra a ser procurada"
# key = gets.chomp

# filename, linenumber = search(key)

# puts "Arquivo: #{filename}, line: #{linenumber + 1}"

# Alternativa 2

def search(key)
  result = {}
  Dir.glob('../data/*.txt') do |file|
    f = File.open(file)
    f.each_with_index do |line, index|
      if line.include?(key)
        result[index + 1] = file
      end
    end
    f.close
  end
  result
end

puts "Buscando Palavras em Arquivos"
puts "Digit uma palavra a ser procurada"
key = gets.chomp

result = search(key)

if result.length > 0
  for key, value in result
    puts "Arquivo: #{value} linha: #{key}"
  end
else
  puts "Nenhuma palavra encontrada"
end
