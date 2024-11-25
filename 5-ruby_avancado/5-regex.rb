phrase = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'

puts phrase.include?('whats app')
puts phrase.start_with?('Olá')
puts phrase.end_with?('1234')

puts phrase =~ /\(99\) 7 4321-1234/
puts phrase =~ /\(99\) 7 4321-1234/ ? 'Encontrado' : 'Não encontrado'
puts phrase =~ /t/

=begin
  Referência de formatação:
  - include?(): Verifica se uma string contém uma substring.
  - start_with?(): Verifica se uma string começa com uma substring.
  - end_with?(): Verifica se uma string termina com uma substring.

  \d - Dígitos de 0 a 9
  \D - Caracteres que não são dígitos
  \w - Caracteres alfanuméricos
  \W - Caracteres que não são alfanuméricos
  \s - Espaços em branco
  \S - Caracteres que não são espaços em branco
  \A - Início da string
  \Z - Fim da string
  \b - Palavras
  \B - Não palavras
=end
