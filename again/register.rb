class Register
  EXEMPT = %w( book books chocolate chocotates headache pills)

  def initialize
    @basket = []
  end
  
  def checkout(basket_items)
    basket_items.each do |x|
      x = x.split(" ")
      qty = x.shift.to_i
      price = x.pop.to_i
      x.delete("at")
      item = x.join(" ")
      basket = Basket.new
      basket.qty = qty
      basket.price = price
      basket.item = item 
      @basket << basket
    end
  end

  def nonexempt?
    if @basket.items.include?(EXEMPT)
      false
    else
      true
    end
    
  end

  def taxes
    @basket.sales_tax = (basket.price * 0.10) if @basket.item.nonexempt?
    @basket.duty  = (@basket.price * 0.05) if @basket.item.include("imported")
  end


  def to_s
    puts @basket
  end


end