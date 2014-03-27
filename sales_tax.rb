
class Create
  DUTY = 0.05
  RATE = 0.10

  def initialize(var)
    @order = var
  end

  def isexempt?(item)
    a = %w(chocolates headache pills)
    b = item.split(" ")
    c = a + b
    one = c.length
    two = c.uniq.length
    two < one
  end

  def extra(item, p)
    tax = isexempt?(item) ? 0 : (p *RATE).round(2)
    if item.include?("imported")
      duties = (p *DUTY).round
    else
      duties= 0
    end
    0 + tax + duties
  end

  def line_item
    line = @order.split
    @qty = line.shift
    price = line.pop.to_f
    line.delete("at")
    @names = line.join(" ")
    taxes = extra(@names,price)#find and tax
    @cost = price + taxes
    puts "#{@qty} #{@names}: #{@cost}"

    a = [@cost, taxes]
  end
end
  
def calcu(a)
      puts "Sales Tax: #{a[1].inject{|x,y|x+y}}"
      puts "Total: #{a[0].inject{|x,y|x+y}}"
 end





=begin
  
rescue Exception => e
  
end
rec = []
arr = "1 imported bottle of perfume at 27.99"
fido = Create.new(arr)
rec = fido.line_item

a = "1 book at 12.49"  
timbo = Create.new(a)
w = timbo.line_item
a = w.zip(rec)
calcu(a)



=end
a = "1 imported bottle of perfume at 27.99"
b = "1 bottle of perfume at 18.99"
c = "1 packet of headache pills at 9.75"
d = "1 box of imported chocolates at 11.25"
jim = Create.new(a)
w = jim.line_item
jack = Create.new(b)
x = jack.line_item
john = Create.new(c)
y = john.line_item
jill = Create.new(d)
z = jill.line_item


l = w.zip(x, y, z)
calcu(l)