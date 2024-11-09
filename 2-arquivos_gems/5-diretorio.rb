# 1- Diretório atual

puts Dir.pwd

# 2- Criando diretório

# Dir.mkdir 'teste'

# 3- Lista arquivos e pastas

puts Dir.glob '*' # todos os arquivos
puts Dir.glob '*.txt' # arquivos com extensão .txt ou passando a extensão do arquivo que queira pesquisar

# 4- Navegando entre diretórios

Dir.chdir 'data'
puts Dir.pwd