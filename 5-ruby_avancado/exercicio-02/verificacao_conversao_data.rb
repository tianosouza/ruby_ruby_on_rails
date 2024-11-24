=begin
  Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" 
  e verifique se a entrada corresponde a este formato. Se sim, o programa deve 
  imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir uma mensagem de erro.
=end

def verifica_e_convert_data(string)
  if string =~ /\d{2}\/\d{2}\/\d{4}/
    dia, mes, ano = string.scan(/\d+/)
    nova_data = "#{ano}-#{mes}-#{dia}"
    puts "Data convertida: #{nova_data}"
  else
    puts "Erro: Data inválida!"
  end
end

puts "Digite uma data no formato dd/mm/aaaa:"
data = gets.chomp
verifica_e_convert_data(data)
