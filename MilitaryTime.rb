i = true
while i == true
puts "Enter a time in military time form: "
response = gets.chomp
if response.length == 4
  hour = response[0, 2]
  min = response[2, 2]
  num1, num2 = hour.to_i, min.to_i
  if num1 > 12 && num1 <= 24 && num2 <= 59
    num1 -= 12
    puts "#{num1}:#{min}AM"
    i = false
  elsif num1 <= 12 && num1 > 0 && num2 <= 59
    puts "#{hour}:#{min}PM"
    i = false
  else
  puts "Invalid hour or minute entry"
end
else
  puts "Did not enter 4 digits"
end
end
