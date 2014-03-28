class Calc
  def self.gov(tax, p)
    @tax = tax
    @p = p
    raw_value = (@p * @tax).round(2)
    rounded_value = (raw_value * 20).ceil / 20.0
  end
end

class Create
  DUTY = 0.05
  RATE = 0.10

  def initialize(var)
    @order = var
  end

  def isexempt?(item)
    a = %w(chocolate chocolates headache pills book books)
    b = item.split(" ")
    c = a + b
    one = c.length
    two = c.uniq.length
    two < one
  end

  def extra(item, p)
    p = p.to_f
    tax = isexempt?(item) ? 0 : Calc.gov(RATE,p)
    duty = item.include?("imported") ? Calc.gov(DUTY,p) : 0
    0 + tax.to_f + duty.to_f
  end

  def line_item
    line = @order.split
    @qty = line.shift
    price = line.pop.to_f
    line.delete("at")
    @names = line.join(" ")
    taxes = extra(@names,price)#find and tax
    @cost = price + taxes
    puts "#{@qty} #{@names}: #{@cost.round(2)}"

    a = [@cost.round(2), taxes.round(2)]
  end
end
  
class Receipt
    def initialize(a)
      @a = a
    end
    def totals
      puts "Sales Tax: #{@a[1].inject{|x,y|x+y}}"
      puts "Total: #{@a[0].inject{|x,y|x+y}}"
    end
end

#CUSTOMER 1
# a = "1 book at 12.49"
# b = "1 music CD at 14.99"
# c = "1 chocolate bar at 0.85"

# one = Create.new(a)
# w = one.line_item
# two = Create.new(b)
# x = two.line_item
# three = Create.new(c)
# y = three.line_item
# l = w.zip(x, y)


#CUSTOMER 2
a = "1 imported box of chocolates at 10.00"
b = "1 imported bottle of perfume at 47.50"

one = Create.new(a)
w = one.line_item
two = Create.new(b)
x = two.line_item
l = w.zip(x)


#CUSTOMER 3
# a = "1 imported bottle of perfume at 27.99"
# b = "1 bottle of perfume at 18.99"
# c = "1 packet of headache pills at 9.75"
# d = "1 box of imported chocolates at 11.25"
# jim = Create.new(a)
# w = jim.line_item
# jack = Create.new(b)
# x = jack.line_item
# john = Create.new(c)
# y = john.line_item
# jill = Create.new(d)
# z = jill.line_item
#l = w.zip(x, y, z)


beep = Receipt.new(l)
beep.totals