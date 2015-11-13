macro compile_time_date
  {{ `date`.stringify }}
end

puts compile_time_date
sleep 2
puts compile_time_date