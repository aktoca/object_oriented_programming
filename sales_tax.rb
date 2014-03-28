class Calc
  def self.gov(tax, p)
    @tax = tax
    @p = p
    raw_value = (@p * @tax).round(2)
    rounded_value = (raw_value * 20).ceil / 20.0
  end
end

class Isexempt
  def self.find?(item)
    a = %w(chocolate chocolates headache pills book books)
    b = item.split(" ")
    c = a + b
    one = c.length
    two = c.uniq.length
    two < one
  end
end


class Create
  DUTY = 0.05
  RATE = 0.10

  def initialize(h)
    @d = h.each {|k,v| instance_variable_set("@#{k}",v)}
    @d
  end
  
  def solo
  #chops the hasd into individual lines
    a = []
    @d.each {|k,v| a << line_item(v)}
    a
  end

  def line_item(order)
  #breaks down the line into each part
   # and prints it ?(should be seperate)?
    @order = order
    
    #define units 
    line = @order.split
    @qty = line.shift
    price = line.pop.to_f
    line.delete("at")
    @names = line.join(" ")
    
    #find and tax goods
    nonexempt = Isexempt.find?(@names) ? 0 : Calc.gov(RATE,price)
    duty = @names.include?("imported") ? Calc.gov(DUTY,price) : 0
    taxes = 0 + nonexempt.to_f + duty.to_f 

    # calculate cost of goods plus all applicable tax
    @cost = price + taxes

    #print line item information
    puts "#{@qty} #{@names}: #{@cost.round(2)}"

    #output to print in Rece
    a = [@cost.round(2), taxes.round(2)]

  end
end
  
class Receipt
    def initialize(a)
      @sales = a.map {|x| x[1]}
      @total = a.map {|x| x[0]}
   end
    def totals
      puts "Sales Tax: #{(@sales.inject{|x,y| x+y}).round(2)}"
      puts "Total: #{(@total.inject{|x,y|x+y}).round(2)}"
    end
end

#CUSTOMER 1
cust1 = {
  line1: "1 book at 12.49",
  line2: "1 music CD at 14.99",
  line3:"1 chocolate bar at 0.85"
} #?does this have to be a hash orcould it be an array,easier?

one = Create.new(cust1) #?how can these three lines be one?
beep = Receipt.new(one.solo) 
beep.totals


#CUSTOMER 2
cust2 = {
  line1: "1 imported box of chocolates at 10.00",
  line2: "1 imported bottle of perfume at 47.50"
}
two = Create.new(cust2)
beep = Receipt.new(two.solo)
beep.totals


#CUSTOMER 3
cust3 = {
  line1: "1 imported bottle of perfume at 27.99",
  line2: "1 bottle of perfume at 18.99",
  line3: "1 packet of headache pills at 9.75",
  line4: "1 box of imported chocolates at 11.25"
}
three = Create.new(cust3)
beep = Receipt.new(three.solo)
beep.totals


# Get input from user:
# one line input and make into an array