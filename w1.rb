a, b, c = 1, 2, -3 

delta = b**2 - 4*a*c

if delta < 0
	puts "Phuong trinh vo nghiem"
else
	puts "x1 = #{(-b + Math.sqrt(delta)) / (2*a)}"
	puts "x2 = #{( -b - Math.sqrt(delta)) / (2*a)}"
end
