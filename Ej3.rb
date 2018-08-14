#class Vehicle
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

#class Car, Heredero de Vehicle
class Car < Vehicle
  @@count = 0
  attr_accessor :count

  def initialize(model, year)
    super
    @@count += 1
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
  
  def self.count
    @@count
  end
end

a = []

10.times do |x| 
  a << Car.new("modelo #{x}", 2012)
end
print Car.count
