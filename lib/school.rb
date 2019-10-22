class School
  def initialize(school_name)
    @school = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if !@roster.include?(student_grade)
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end
  
  def grade(number)
    @roster.each do |grade, student|
      if number == grade
        return student
      end
    end
  end
  
  def sort
    new_hash = {}
    @roster.each do |grade, student|
      new_hash[grade] = student.sort
    end
    new_hash
  end
end