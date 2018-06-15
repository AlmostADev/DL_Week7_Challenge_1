# Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

puts inventario

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
puts "Bienvenido al Inventario de Desafio Latam..."

loop do
    puts "Elige una de las siguientes opciones: \n"
    puts "1. Agregar un item \n2. Eliminar un item \n3. Actualizar item \n4. Ver stock total \n5. Item mayor stock \n6. Ask to system ;) \n7. Salir"
    opc = gets.chomp.to_i
    case opc
        # 1 Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string
        when 1 Listo
            puts "Ingresa el nombre del item"
            key = gets.chomp
            puts "Ingresa el valor del item"
            value = gets.chomp.to_i
            inventario.store(key, value)
            puts "Se ha agregado un #{key} con valor #{value} al inventario"
            puts "El inventario se ha actualizado..."
            puts inventario
        #2 Si el usuario ingresa 2, podrá eliminar un item.
        when 2 Listo
            if inventario.length != 0
                puts "Ingresa el nombre del producto"
                key = gets.chomp
                key_delete = inventario.delete(key.to_sym)
                puts "Se ha eliminado #{key} del inventario"
                if inventario.length != 0
                  puts "El inventario se ha actualizado..."
                else
                  puts "El inventario ha quedado vacio"
                end
                puts inventario if inventario.length != 0
            else
                puts "Inventario vacío"
            end
        #3 Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
        when 3
            loop do
                puts "Ingrese nombre de elemento a modificar"
                old_key = gets.chomp.to_sym
                if inventario.has_key?(old_key)
                puts "Ingrese nuevo nombre para el elemento"
                new_key = gets.chomp.to_sym
                puts "Ingrese un nuevo valor para el elemento"
                new_value = gets.chomp.to_i
                puts "Nuevo elemento #{new_key} : #{new_value}"
                puts "Inventario actualizado..."
                break
                else
                    puts "El elemento no existe en el inventario, Intentalo nuevamente ;)"
                end
            end
        #4 Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
        when 4 Listo
            puts "El stock total del inventario es de #{inventario.each_value.sum} unidades"
        #5 Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
        when 5 Listo
            max_stock = inventario.key(inventario.values.max)
            puts "El item de mayor stock es... #{max_stock}"
        #6 Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
        when 6 Listo
            puts "Asking to system :o ..."
            puts "Ingresa el nombre del producto"
            key = gets.chomp
            if inventario[key.to_sym]
                puts "si"
            else
                puts "no"
            end
        #7 El programa debe repertirse hasta que el usuario ingrese 7 (salir).
        when 7 Listo
            puts "Shutdown Inventory Program :( ..."
        break
    end
end