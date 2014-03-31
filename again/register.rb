class Register
  EXEMPT = %w( book books chocolate chocotates headache pills)

  def initialize
    
  end
  
  def checkout(basket_items)
    basket_items.each do |x|
      x = x.split(" ")
      qty = x.shift.to_f
      price = x.pop.to_f
      x.delete("at")
      item = x.join(" ")
      @basket = Basket.new
      @basket.qty = qty
      @basket.price = price
      @basket.item = item 
    end
  end

  def nonexempt?(items)
    if EXEMPT.include?(items)
      false
    else
      true
    end
    
  end

  def taxes
    puts @basket.price
    item = @basket.item
    @basket.import_duty  = (@basket.price * 0.05) if item.include?("imported")
    puts @basket.import_duty
    @basket.sales_tax = (@basket.price * 0.10) if nonexempt?(item)
    
    puts @basket.sales_tax
  end


  def to_s
    puts @basket
  end


end