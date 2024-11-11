# Metodos math

puts Math.sqrt(4) # raiz quadrada
puts Math.sin(1.5) # seno
puts Math.cos(1.5) # cosseno
puts Math.tan(1.5) # tangente
puts Math.atan(1.5) # arctan
puts Math.exp(1.5) # e elevado a uma potencia
puts Math.log(10) # logaritmo natural
puts Math.log(10, 10) # logaritmo com base
puts Math::PI # valor de PI

# Area de um circulo

def calc_area(raio)
  return Math::PI * raio**2
end

def calc_perimetro(raio)
  return 2 * Math::PI * raio
end

puts "Digite o raio do circulo: "
raio = gets.chomp.to_f

area = calc_area(raio)
perimetro = calc_perimetro(raio)

puts "Area do circulo com o #{raio} é #{area.round(2)}"
puts "Perimetro do circulo com o #{raio} é #{perimetro.round(2)}"
