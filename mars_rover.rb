class Rover
  def initialize(xr,yr)
    @lr_coords = [0,0]
    # ask for coords
    # puts "Enter upper-right x coordinate"
    # x = gets.chomp.to_i
    # puts "Enter upper-right y coordinate"
    # y = gets.chomp.to_i
    @ur_coords = [xr, yr]

    puts @coordinates.inspect
  end

  def position(l_r,u_d,facing)
    l_r
    u_d
    facing
  end

  def explore()

  end
end

rex = Rover.new(5,5)
rex.position(1,2,'N')