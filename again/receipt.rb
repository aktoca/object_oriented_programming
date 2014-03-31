require './register'
require './basket'


class Receipt 

  def initialize(basket)
    @register = Register.new
    @register.checkout(basket)
    puts @register.inspect
  end

  def printout
    @register.taxes
  end



end

items = ["1 book at 12.49", "1 music CD at 14.99", "1 chocolate bar at 0.85"]
basket = Receipt.new(items)

basket.printout