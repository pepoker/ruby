hash = {'key'=>'first element', 2=>:second, doge: ['such', :wow]} 

m = hash[:doge][1]

puts m

hash[:burn_them] = 'All'
puts hash

hash.each do |key, value|
	puts 'la llave {#key}  tiene el valo {#value}'
end

puts "---------------------------------"

class Persona
	def initialize(name)
		@nombre = name
	end

	def nombre
		@nombre
	end

	def nombre=(nuevo_nombre)
		@nombre = nuevo_nombre
	end
end

ana = Persona.new("Ana lucia")
andrei = Persona.new("El helo")

puts ana.nombre
ana.nombre = "otra ana"
puts ana.nombre

puts "---------------------------------"

class Persona2
	attr_accessor :nombre, :apellido
	def initialize(name)
		@nombre = name
	end
end

ana = Persona2.new("Ana lucia")
andrei = Persona2.new("El helo")

puts ana.nombre
ana.nombre = "otra ana"
ana.apellido = "barrios"
puts ana.nombre
puts ana.apellido