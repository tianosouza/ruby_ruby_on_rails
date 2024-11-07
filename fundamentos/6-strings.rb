# Dados do Filme

name = "De volta para o Futuro"
name_other = "de volta para o futuro"

puts name == name_other  # false, pois o ruby e case sensitive

description = "O filme trata de uma viagem no tempo"

description_other = <<Text
  O filme #{name} trata de uma viagem no tempo
Text

puts description_other

puts description.length
puts description_other.size