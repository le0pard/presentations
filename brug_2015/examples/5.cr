struct Point
  property x
  property y

  def initialize(@x, @y)
  end
end

puts Point.new(1, 2).inspect
puts Point.new(2, 3).inspect