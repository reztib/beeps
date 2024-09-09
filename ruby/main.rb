puts "Enter the number of beeps:"
count = gets.to_i

count.times do |i|
  puts "Beep number: #{i+1}"
  print "\a"
  sleep(1)
end
