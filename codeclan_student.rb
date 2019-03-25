class StudentRecord

  def initialize(student_name, student_cohort, fave_prog_language)
    @student_name = student_name
    @student_cohort = student_cohort
    @fave_prog_language = fave_prog_language
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @student_cohort
  end

  def set_student_name(student_name)
    @student_name = student_name
  end

  def set_student_cohort(student_cohort)
    @student_cohort = student_cohort
  end

  def student_can_talk(student_name)
     if @student_name == student_name
       return "I can"
     end
   end

  def student_fave_prog_language(fave_prog_language)
    return @fave_prog_language
  end

  def say_favourite_language(fave_prog_language)
    return "I love " + fave_prog_language
  end
end
