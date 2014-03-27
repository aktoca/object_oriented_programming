class Person
 attr_accessor :name
  def initialize(name)
    @name = name
    puts @name
      
  end
end

class Student < Person

  def learn
    puts "I get it!"
  end

end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object."
  end

end


#test executability
i = Student.new("me")
i.learn

u = Instructor.new("everyone")
u.teach 