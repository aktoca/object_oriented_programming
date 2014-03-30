class Rover

  def initialize(array_start)
    @x = array_start[0].to_i
    @y = array_start[1].to_i
    @facing = array_start[2]
  end


  def move
    @y += 1 if @facing == 'N'
    @y -= 1 if @facing == 'S'
    @x += 1 if @facing == 'E'
    @x -= 1 if @facing == 'W'
  end

  def left
    if @facing == "N"
      @facing = "W"
    elsif @facing == "W"
      @facing = "S"
    elsif @facing == "S"
      @facing = "E"
    elsif @facing == "E"
        @facing = "N"
    end

  end


  def right
    if @facing == "N"
      @facing = 'E'
  elsif @facing == 'E'
      @facing = 'S'
    elsif @facing == 'S'
      @facing = 'W' 
    elsif @facing == 'W'
      @facing = 'N' 
    end
  end

  def to_s
    puts "#{@x} #{@y} #{@facing}"
  end



end

class Command

  def initialize(x_range, y_range)
    x = 0 
    y = 0
    x_range = x_range
    y_range = y_range

  end

  def begin(start)
   @rover = Rover.new(start)
   puts "what would you like to do?"
   command = gets.chomp.split("")
   direction = start[2]
   command.each do|n| 
    if n == "M"
      current = @rover.move
    elsif n == "L"  
      current = @rover.left 
    elsif n == "R"
      current = @rover.right
    end
  end
  @rover.to_s
end
end

a = Command.new(5,5)
puts "Were should we start?"
start = gets.chomp.split(" ")

a.begin(start)

