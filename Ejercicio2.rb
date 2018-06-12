# 1. Se tiene el siguiente hash:
#Corrige el error para mostrar la información solicitada.
productos = {'bebida' => 850, 'chocolate' => 1200,'galletas' => 900, 'leche' => 750}

productos.each do |key, value|
    puts "#{key} : #{value}"
end

# 2. Se quiere agregar un nuevo producto al hash:
# Corrige la instrucción para agregar el producto.
productos["cereal"] = 2200
print productos

# 3. Se quiere actualizar el precio de la bebida:
# Corrige la instrucción para actualizar el valor del producto existente.
productos['bebida'] = 2000
print productos

# 4. Convertir el hash en un array y guardarlo en una nueva variable.
hash_to_arr = productos.to_a
print hash_to_arr

# 5. Eliminar el producto 'galletas' del hash.
productos.delete("galletas")
print productos