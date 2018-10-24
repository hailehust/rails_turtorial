
#defination
def primeChecking(n)
	if n < 3
		return true	#co la so nguyen to
	else
		for i in 2...n
			if(n % i == 0)
				return false # khong phai so nguyen to
			end		
		end
		return true	
	end


end

# main

print "enter n: "
n = gets().to_i

print "Cac so nguyen to < #{n}: "
for i in 1...n
	if primeChecking(i)
		printf("%d ", i)
	end
end
puts "\n"





