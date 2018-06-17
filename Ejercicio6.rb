=begin
Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor
es el precio de este.
=end
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1 Obtener el plato mas caro
puts restaurant_menu.max_by { |i, j| j }[0]

# 2 Obtener el plato mas barato
puts restaurant_menu.keys.min_by { |i, j| i }

# 3 Sacar el promedio del valor de los platos
arr = restaurant_menu.each_value.to_a
puts arr.sum / arr.length

# 4 Crear un arreglo con solo los nombres de los platos
arr_names = restaurant_menu.each_key.to_a
puts arr_names

# 5 Crear un arreglo con solo los valores de los platos
arr_values = restaurant_menu.each_value.to_a
puts arr_values

# 6 Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)
restaurant_menu.each_value do |value|
    value*=1.19
    puts value
end

# 7 Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra
restaurant_menu.each do |key, value|
    value-=(value*0.2) if key.include? " "
    puts value
end
