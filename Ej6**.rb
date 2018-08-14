# class Student
class Student
  include Test
  include Attendance
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end

# module Test
module Test
  def result(nota1, nota2)
    @promedio = (nota1 + nota2) / 2
    if @promedio > 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

# module Attendance
module Attendance
  def self.student_quantity
    puts students
  end
end

a = []

10.times do |x|
  a << Student.new("name #{x}", 4, 5)
end
