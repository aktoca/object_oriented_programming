class Student

  def learn
    puts "I get it!"
  end

end


class Instructor

  def teach
    puts "Everything in Ruby is an Object."
  end

end


#test executability
i = Student.new
i.learn

u = Instructor.new
u.teach 