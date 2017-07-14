class Persona < ActiveRecord::Base
  #atributos
  #attr_reader :nombre, :fecha_de_nacimiento, :ahorro, :apodo
  #attr_accessor :genero
  validates :nombre, format: { with: /\A[a-zA-Z]+\z/ }

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
