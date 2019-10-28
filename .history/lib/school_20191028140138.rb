class School
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
=begin  
    @student_name = student_name
    @student_grade = student_grade
    if !@roster.include?(student_grade)
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
=end
    !@roster.include?(grade) ? (@roster[grade] = [] ; @roster[grade] << name) : @roster[grade] << name #single line refactoring of above method
  end

  def grade(grade_in)
    @roster.each do |grade, student|
      if grade == grade_in
        return student
      end
    end
  end

  def sort
    @roster.collect do |grade, student|
      student.sort
    end
  end
end