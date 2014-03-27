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


#ex1.7
i = Student.new("Christina")
i.greeting

# ex1.8
u.teach
i.learn
puts
puts "ERROR: undefined method teach on student class"
puts "b/c students don't know enough to teach"
puts "... also meaning 'teach' method is out of scope of student class"
i.teach