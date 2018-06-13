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
        when opc = 1
            puts "Ingresa el nombre del item"
            key = gets.chomp
            puts "Ingresa el valor del item"
            value = gets.chomp.to_i
            inventario[key] = value
            puts inventario
            puts "Tu inventario ha sido actualizado"
        #2 Si el usuario ingresa 2, podrá eliminar un item.
        when opc = 2
            puts "1. Por nombre \n2. Por valor"
            opc2 = gets.chomp.to_i
            case
                when opc2 = 1
                    puts "Ingresa el nombre del producto"
                    key = gets.chomp
                    inventario.delete(key)
                    puts inventario
                when opc2 = 2
                    puts "Ingresa el valor del producto"
                    value = gets.chomp.to_i
                    inventario.delete(value)
                    puts inventario
            end
        #3 Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
        when opc = 3
            puts "Actualizando un item..."
        #4 Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
        when opc = 4
            puts inventario
        #5 Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
        when opc = 5
            max_stock = inventario.key(inventario.values.max)
            puts "Item mayor stock es... #{max_stock}"
        #6 Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
        when opc = 6
            puts "Asking to system :o ..."
            puts "1. Buscar por nombre \n2. Buscar por valor"
            opc3 = gets.chomp.to_i
            case
                when opc3 = 1
                    puts "Ingresa el nombre del producto"
                    key = gets.chomp
                    if inventario.key(key)
                        puts "si"
                    else
                        puts "no"
                    end
                when opc3 = 2
                    puts "Ingresa el valor del producto"
                    value = gets.chomp.to_i
                    if inventario.value(value)
                        puts "si"
                    else
                        puts "no"
                    end
            end
        #7 El programa debe repertirse hasta que el usuario ingrese 7 (salir).
        when opc = 7
            puts "Quiting :( ..."
        break
    end
end