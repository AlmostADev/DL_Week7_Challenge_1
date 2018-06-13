# Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

# Se pide:

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
# 1 Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y
#   agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
#   Ejemplo del input: "Pendrives, 100"
#2 Si el usuario ingresa 2, podrá eliminar un item.
#3 Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
#4 Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
#5 Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
#6 Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
#  el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#7 El programa debe repertirse hasta que el usuario ingrese 7 (salir).
puts inventario

puts "Bienvenido al Inventario de Desafio Latam..."

loop do
    puts "Elige una de las siguientes opciones: \n"
    puts "1. Agregar un item \n2. Eliminar un item \n3. Actualizar item \n4. Ver stock total \n5. Item mayor stock \n6. Ask to system ;) \n7. Salir"
    opc = gets.chomp.to_i
    key = ""
    value = ""
    case opc
        when opc = 1
            puts "Ingresa el nombre del item"
            key = gets.chomp
            puts "Ingresa el valor del item"
            value = gets.chomp.to_i
            inventario[key] = value
            puts "Tu inventario ha sido actualizado"
        when opc = 2
            puts "1. Por nombre \n2. Por valor"
            opc2 = gets.chomp
            case
                when opc2 = 1
                    puts "Ingresa el nombre del producto"
                    key = gets.chomp
                    inventario.delete(key)
                    puts inventario
                when opc2 = 2
                    puts "Ingresa el valor del producto"
                    value = gets.chomp
                    inventario.delete(key)
                    puts inventario
            end
        when opc = 3
            puts "Actualizando un item..."
        when opc = 4
            puts "Viendo stock total..."
        when opc = 5
            puts "Item mayor stock..."
        when opc = 6
            puts "Asking to system :o ..."
        when opc = 7
        puts "Quiting :( ..."
        break
    end
end