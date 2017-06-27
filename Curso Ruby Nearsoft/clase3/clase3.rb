require 'Date'

class Persona
	#atributos
	attr_reader :nombre, :fecha_de_nacimiento, :ahorro, :apodo
	attr_accessor :genero

	#constructor
	def initialize(nombre, fecha_de_nacimiento, apodo = nil)
		@nombre = nombre
		@fecha_de_nacimiento = Date.parse(fecha_de_nacimiento)
		@ahorro = 0
		@apodo = apodo
	end

	#acciones
	def saludar
		puts "hola #{nombre}"
	end

	def obtener_paga
		#obtiene la paga
	end

	def nombre
		@nombre.upcase
	end

	def edad
		hoy = Date.today #fecha de hoy
		hoy.year - fecha_de_nacimiento.year - 
		((hoy.month > fecha_de_nacimiento.month || (hoy.month == fecha_de_nacimiento.month && hoy.day >= fecha_de_nacimiento.day)) ? 0 : 1)
	end

	def obtener_paga(sueldo)
		@ahorro += sueldo
	end
end

#x = Persona.new("pedro", "19-09-1988", "pepo")
x = Persona.new("pedro", "19-09-1988")
puts x

puts x.saludar
puts x.fecha_de_nacimiento
puts x.edad
puts x.obtener_paga(200)
puts x.obtener_paga(10)
puts x.ahorro
puts x.apodo
