class Rover

  DIRECT = {
      'N' => ['W', 'E', [0,1]],
      'S' => ['E', 'W', [0,-1]],
      'E' => ['N', 'S', [1,0]],
      'W' => ['S', 'N', [-1,0]]
    }

  def initialize (x,y)
    #Plateau.new(x,y)
    @upr_x = x
    @upr_y = y
  end

  def position(l_r,u_d,facing)
    @current = []
    @current << l_r
    @current << u_d
    @current << facing
  end

  def goforth(arr,c)
    xc = arr[0] + c[2][0]
    yc = arr[1] + c[2][1]
    position(xc,yc,arr[2])

  end


  def explore(var)
    what = var.split("")    
    here = what.map do |i| 
      c = @current[2]
      @other = DIRECT[c]
      if i == 'M' 
        @current = goforth(@current,@other)
      elsif i == 'L' 
        @current[2] = @other[0]
      elsif i == 'R'
        @current[2] = @other[1]
      end
    end
    here[-1]
  end
end

rex = Rover.new(5,5)
start = rex.position(1,2,'N')

move = rex.explore('LMLMLMLMM')
puts "#{move[0]} #{move[1]} #{move[2]}"

again = rex.position(3, 3, 'E')
move = rex.explore('MMRMMRMRRM')
puts "#{move[0]} #{move[1]} #{move[2]}"