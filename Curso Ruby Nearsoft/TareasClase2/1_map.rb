
# Éste es un arreglo con porcentajes, conviertelo a que sean numeros enteros.
# NOTE: Se resuelve en UNA linea
# NOTE: el método .each no te va a servir porque regresa el mismo arreglo que
# se le pasa como parámetro (lo puedes intentar si gustas).
# Investiga el método .map

porcentajes = [0.1, 0.21, 0.23, 0.94]

# metodo map aqui - una linea!!!
uso_map = porcentajes.map{|a| "#{(100*a).to_i}%" }

puts uso_map
# Resultado esperado:
# 10
# 21
# 23
# 94

# Si le quieres aumentar un poco la complejidad, trata de llegar a:
# 10%
# 21%
# 23%
# 94%