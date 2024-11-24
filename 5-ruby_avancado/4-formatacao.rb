=begin
  Referência de formatação:

  %Y - Ano com 4 dígitos
  %m - Mês como número decimal (01-12)
  %d - Dia do mês como número decimal (00-31)
  %H - Hora (00-23)
  %M - Minuto (00-59)
  %S - Segundo (00-59)
  %z - Fuso horário
  %B - Nome do mês
  %A - Nome do dia da semana
  %w - Dia da semana como número decimal (0-6)
  %j - Dia do ano como número decimal (001-366)
  %U - Número da semana no ano (00-53) onde a semana começa no domingo
  %W - Número da semana no ano (00-53) onde a semana começa na segunda-feira
  %c - Data e hora
  %x - Data
  %X - Hora
  %% - Caractere '%'
=end

birthday = Time.new(1994, 10, 12)

puts birthday.strftime('%Y-%m-%d')
puts birthday.strftime('%B %d, %Y')
puts birthday.strftime('%A, %B %d, %Y')
puts birthday.strftime('%Y-%m-%d %H:%M:%S')
puts birthday.strftime('%Y-%m-%d %H:%M:%S %z')
puts birthday.strftime('%Y-%m-%d %H:%M:%S %z %B %d, %Y')
puts birthday.strftime('%Y-%m-%d %H:%M:%S %z %B %d, %Y %A') # Erro de formatação proposital
puts birthday.strftime('%Y-%m-%d %H:%M:%S %z %B %d, %Y %A').gsub(/%A/, '%A') # Correção do erro de formatação