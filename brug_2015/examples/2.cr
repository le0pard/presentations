my_hash = {} # compilation error
my_hash = {} of Symbol => String
my_hash = {} of Symbol | String => Float32 | String
my_hash = {
  :name => "Exilor",
  "age" => 25,
  0 => 1,
  true => false
}

puts my_hash
