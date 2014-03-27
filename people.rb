class Person
 
  # ex1.4
  def initialize(name)
    @name = name
  end
  
  #ex1.5
  def greeting 
    puts "Hi, my name is #{@name}"     
  end
end

# ex1.1
class Student < Person
  # ex1.2
  def learn
    puts "I get it!"
  end

end


class Instructor < Person
  # ex1.3
  def teach
    puts "Everything in Ruby is an Object."
  end

end




#ex1.6
u = Instructor.new("Chris")
u.greeting


#test executability
# i = Student.new("me")
# i.learn
# i.greeting