# Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#1 Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }
arr_sells = Hash[meses.zip(ventas)]
puts arr_sells

#2 En base al hash generado:
#2.1 Invertir las llaves y los valores del hash.
puts arr_sells.invert

#2.2 Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts arr_sells.max_by { |i, j| j }[0]