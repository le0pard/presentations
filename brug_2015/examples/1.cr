my_array = [] # compilation error

my_array = [] of String | Int32
my_array = [] of Float32
my_array = [] of Array(Float32 | String)
my_array = [] of String | Float32 | Char | Symbol
my_array = [] of Bool | Nil
my_array = [1,2,3,4]
my_array = ["banana", "apple"]

puts my_array
