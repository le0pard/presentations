def add(a: String, b: String)
  "#{a} #{b}"
end
def add(a: (Int|Float), b: (Int|Float))
  a + b
end
def add(a, b)
  nil
end


puts add("Hello", "BRug")
puts add(2, 3)
puts add(1.12, 3.47)
puts add(:test, 2).inspect