print "enter n: "
n = gets().to_i


# fizz buzz
puts "Bai toan FizzBuzz"
for i in 1..n
	if (i % 6 == 0)
		puts "#{i} FizzBuzz"
	elsif (i % 2 == 0)
		puts "#{i} Fizz"
	elsif (i % 3 == 0)
		puts "#{i} Buzz"
	else
		puts "#{i}"
	end

end