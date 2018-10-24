# # #!/usr/bin/ruby
# # ################ DEFINATIONS ############################

# # $x = 10	# this is a global variable

# # class Customer # a class
# #    @@no_of_customers = 0			# like static variable in java (bien - thuoc tinh cua 1 lop, cua tat cac cac thanh vien)
# #    MAX_CUSTOMER_NUMBER = 100



# # ################ CONSTRUCTOR ########################################
# # 	# default constructor khong co parameters

# #     def initialize(id, name, addr)	# constructor with parameters
# #       @cust_id = id 				# instance variable (bien - thuoc tinh cua 1 instance) - attribute in java
# #       @cust_name = name
# #       @cust_addr = addr

# #       @@no_of_customers += 1		# cap nhat so luong customer
# #    end

# # ################ OTHER METHODS ########################################
# # 	def displayInformation
# # 		puts "ID : #{@cust_id}"
# # 		puts "Name : #{@cust_name}"
# # 		puts "Address : #{@cust_addr}"
# # 		puts "MAX_CUSTOMER_NUMBER : #{MAX_CUSTOMER_NUMBER}"
# # 	end

# # 	def customerNumber
# # 		puts "Customer number : #{@@no_of_customers}"
# # 	end

# # 	def showGlobalVarialbe
# # 		puts "x = #{$x}"
# # 	end
# # end #end of calss defination

# # c1 = Customer.new(1,"hai","hanoi")
# # c2 = Customer.new(2,2,2)

# # ################ MAIN ##################################

# # # c1.displayInformation()
# # # c1.customerNumber()
# # # c1.showGlobalVarialbe()

# # # 5.times do |i|	# i chay tu 0 - 4
# # # 	puts i
# # # end


# # # arr = [1, "hai", 1.23]	# i la cac phan tu cua mang
# # # arr.each do |i|
# # # 	puts i
# # # end

# # # hsh = {"mot" => 1, "hai" => 2}
# # # hsh.each do |key, value|
# # # 	puts "#{key} is #{value} \n"
# # # end

# # # (1..4).each do |i|
# # # 	puts "#{i}"
# # # end


# # # puts (1<=>2)
# # # defined? puts(bar)


# # case

# # x =5
# # case x
# # when 1
# # 	puts "x = 1"
# # when 2
# # 	puts "x = 2"
# # when 3..4
# # 	puts "3..4"
# # else
# # 	puts "defautl"	
# # end

# # while loop

# # x = 5
# # y = 1
# # # while y <= x
# # # 	puts "#{y}"
# # # 	y+=1
# # # end

# # begin
# # 	puts "a"
# # 	y+=1
# # end while y <= x



# # for i in 0..3
# # 	puts i
# # end


# # (0..3).each do |i|
# # 	puts i
# # end



# # for i in 0..5
# #    if i > 2 then
# #       # break
# #       # next 	# giong continue
# #       redo # lap lai vong lap vua roi
# #    end #end cua if
# #    puts "Value of local variable is #{i}"
# # end


# # define a method

# # def add(x = 1, y)
# # 	puts "#{x} + #{y} = #{x+y}"
# # 	# return 
# # end

# # add(2)

# # method voi so luong tham so khong biet truoc
# # def m(*parameters)
# # 	puts "parameters number: #{parameters.length}"
# # 	for i in 0...parameters.length
# # 		puts "parameters[#{i}] : #{parameters[i]}"
# # 	end
# # end

# # m(1,2,3)

# # class method - phuong thuc cua lop, truy cap duoc thong qua lop

# # class C
# # 	def C.m
# # 		puts "this is a class method"
# # 	end
# # end

# # alias m m1

# # C.m1

# # digits = 0..9

# # puts digits.include?(5)
# # ret = digits.min
# # puts "Min value is #{ret}"

# # ret = digits.max
# # puts "Max value is #{ret}"

# # ret = digits.reject {|i| i > 5 }
# # puts "Rejected values are #{ret}"
# # # puts "#{digits.to_a}"PHP

# # digits.each do |i|	# i duyet tu dau den cuoi range
# #    puts "In Loop #{i}"
# # end


# # puts "enter input : "
# # input = gets
# # puts input
# # putc input

# # def promptAndGet(prompt)
# #    print prompt
# #    res = readline.chomp
# #    throw :quitRequested if res == "!"
# #    return res
# # end

# # catch :quitRequested do
# #    name = promptAndGet("Name: ")
# #    age = promptAndGet("Age: ")
# #    sex = promptAndGet("Sex: ")
# #    # ..
# #    # process information
# # end
# # promptAndGet("Name:")



# #!/usr/bin/ruby -w

# # # END {
# # #    puts "Terminating Ruby Program"
# # # }
# # # BEGIN {
# # #    puts "Initializing Ruby Program"
# # # }



# #=========================== a class ================================================
# class Box
# 	#=========================== class variables/ static variables ======================================
# 	@@count = 0

# 	#=========================== initialize/ constructor ================================================
#    def initialize(w,h)
#       @width, @height = w, h
#       @@count += 1
#    end

# 	#=========================== class method/ static methods ==========================================
#    def self.printCount()
#    		puts "There are #{@@count} boxs"
   	
#    end

# 	#=========================== accessor/ getter ================================================
#    def getWidth
#       @width
#    end
#    def getHeight
#       @height
#    end

# 	#=========================== setter/ setter ================================================
#    def setWidth=(value)
#       @width = value
#    end
#    def setHeight=(value)
#       @height = value
#    end

#    # to_s method : return a string which describes the instance/ the object
#    def to_s
#    		return "(width: #{@width} height: #{@height})"
#    end

# 	#=========================== instance methods ================================================
#    def printArea
#       getWidth * getHeight
#    end
#    # access control: chi ao dung cho instance methods, khong dung cho variables
#    private :getWidth, :getHeight	# chi goi duoc ben trong khai bao class
#    protected :printArea				# chi goi duoc ben trong khai bao class va trong khai bao subclasses

# end


# #================================ MAIN =========================================================
# # create an object
# box = Box.new(10, 20)

# # o main chi goi duoc public methods cua cac objects
# puts "#{box.getWidth()}"

# # use setter methods
# # box.setWidth = 30
# # box.setHeight = 50

# # use accessor methods
# # x = box.getWidth()
# # y = box.getHeight()


# # puts "Width of the box is : #{x}"
# # puts "Height of the box is : #{y}"
# # puts "Area of the box is: #{box.getArea()}"
# # Box.printCount()
# # puts "String representation of box is : #{box}"





# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()