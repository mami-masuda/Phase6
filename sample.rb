def input_value

count = 1

while count <= 10
value = gets
puts value
exit
if value < 1
  puts "エラーです"
elsif value > 5
  puts  "エラーです"
else
  puts "ありがとうございます"
end

count = count + 1

end

end

input_value