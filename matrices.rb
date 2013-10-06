puts "Practica 4 - LPP"

puts "\nCual es la dimension de la matriz a calcular" 
STDOUT.flush
x = gets.chomp #Recoge la dimensión en un char, que se pasará a int --> x.to_i
matriz1 = Array.new(x.to_i){Array.new(x.to_i)} #Creacion de las matrices
matriz2 = Array.new(x.to_i){Array.new(x.to_i)}

puts "\n\t ~~ Elementos de la primera matriz~~ \n"
for i in (0..((x.to_i)-1))
   for j in (0..((x.to_i)-1))
    puts " ~Introduzca el elemento #{i+1},#{j+1}:"
    STDOUT.flush
    y = gets.chomp
    matriz1[i][j] = y.to_f 
  end
end