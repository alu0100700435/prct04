puts "\n Practica 4 - LPP"

puts "\n--------------------------------------------------------------------------------- \n"
puts "\n|\tPROGRAMA QUE REALIZA LA SUMA Y MULTIPLICACION DE MATRICES CUADRADAS\t|\n"
puts "\n|\t\tAutoras: Raquel Alvarez Hernandez - Carlota Lazaro Hernandez\t|\n"
puts "\n--------------------------------------------------------------------------------- \n"

puts "\nCual es la dimension de la matriz a calcular" 
STDOUT.flush
x = gets.chomp #Recoge la dimensión en un char, que se pasará a int --> x.to_i
z = x.to_i
m1= Array.new(z){Array.new(z)} #Creacion de las matrices
m2 = Array.new(z){Array.new(z)}

#Relleno de matrices con los elementos recogidos por teclado
puts "\n\t ~~ Elementos de la primera matriz~~ \n"
for i in (0...z)
   for j in (0...z)
    puts " ~Introduzca el elemento #{i+1},#{j+1}:"
    STDOUT.flush
    y = gets.chomp
    m1[i][j] = y.to_f 
  end
end

puts "\n\t ~~ Elementos de la segunda matriz~~ \n"
 for i in (0...z)
    for j in (0...z)
     puts " ~Introduzca el elemento #{i+1},#{j+1}:"
     STDOUT.flush
     y = gets.chomp
     m2[i][j] = y.to_f 
   end
 end

puts "\n--------------------------------------------------------------------------------- \n"
puts "|\t\t~~~ La matriz resultante de la suma es ~~~ \t\t\t|"
puts "--------------------------------------------------------------------------------- \n"

m3 = Array.new(z){Array.new(z)} #Creacion de la matriz que contendrá el resultado de la suma

for i in (0...z)
  for j in (0...z)
    m3[i][j] = m1[i][j] + m2[i][j]
  end
end

print m3

puts "\n--------------------------------------------------------------------------------- \n"
puts "|\t\t~~~ La matriz resultante de la multiplicacion es ~~~ \t\t| "
puts "--------------------------------------------------------------------------------- \n"

m4 = Array.new(z){Array.new(z, 0)} #Creacion de la matriz que contendrá el resultado de la multiplicacion , inicializada en 0

for i in (0...z)
  for j in (0...z)
    for k in (0...z)
      m4[i][j] += m1[i][k] * m2[k][j]	
    end
  end
end

print m4
puts "\n\n"
