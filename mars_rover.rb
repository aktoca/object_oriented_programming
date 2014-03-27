class Plateau
  def initialize(xr,yr)
    @lowr_x = 0
    @lowr_y = 0
    # ask for coords
    # puts "Enter upper-right x coordinate"
    # x = gets.chomp.to_i
    # puts "Enter upper-right y coordinate"
    # y = gets.chomp.to_i
    @upr_x = xr
    @upr_y = yr 

  end
end

class Rover < Plateau
  def initialize (x,y)
    super
    puts @lowr_x
    puts @lowr_y
    puts x
    puts y
  end

  def position(l_r,u_d,facing)
    puts l_r
    puts @lowr_x
    puts u_d
    puts @lowr_y
    #Rover.new(@lowr_x + l_r, @lowry + u_d)
  end

  def explore()

  end
end

rex = Rover.new(5,5)
move.position(1,2,'N')
puts move