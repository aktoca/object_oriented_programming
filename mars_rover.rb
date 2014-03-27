

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

  def explore(var)
    what = var.split("")
    what.each {|i| puts i}


    facing N 
    M = +y
    LM = -x f = W
    RM = +x f = E
    facing S
    M = -y
    LM = +x f = E
    RM = -x f = W
    facing E
    M = +x
    LM = +y f = N
    RM = -y f = S
    facing W
    M = -x
    LM = -y f = S
    RM = +y f = N

    N['W', 'E', (0,1)]
    S['E', 'W', (0,-1)]
    E['N', 'S', (1,0)]
    W['S', 'N', (-1,0)]

  end
end

rex = Rover.new(5,5)
puts rex.inspect
start = rex.position(1,2,'N')
puts start.inspect
move = rex.explore('LMLMLMLMM')
