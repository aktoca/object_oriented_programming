class Current
  def initialize(x,y,facing)
    "[#{x}, #{y}, #{facing}]"
  end
end

# class Plateau
#   def initialize(xr,yr)

#     # ask for coords
#     # puts "Enter upper-right x coordinate"
#     # x = gets.chomp.to_i
#     # puts "Enter upper-right y coordinate"
#     # y = gets.chomp.to_i

#   end
# end

class Rover
  def initialize (x,y)
    #Plateau.new(x,y)
    @upr_x = x
    @upr_y = y
  end

  def position(l_r,u_d,facing)
    puts "this is where we will move to"
    puts l_r, u_d, facing
    "#{l_r}, #{u_d}, #{facing}"
  end

  def explore()

  end
end

rex = Rover.new(5,5)
puts rex.inspect
move = rex.position(1,2,'N')
puts move.inspect
puts move[0]