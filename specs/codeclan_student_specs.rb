require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class StudentRecordTest < MiniTest::Test

  def test_get_student_name
    student_name = StudentRecord.new("John", "G12", "Java")
    assert_equal("John", student_name.get_student_name)
  end

  def test_get_student_cohort
    student_cohort = StudentRecord.new("John", "G12", "Java")
    assert_equal("G12", student_cohort.get_student_cohort)
  end

  def test_set_student_name
    student_name = StudentRecord.new("John", "G12", "Java")
    student_name.set_student_name("Jane")
    assert_equal("Jane", student_name.get_student_name)
  end

  def test_set_student_cohort
    student_cohort = StudentRecord.new("John", "G12", "Java")
    student_cohort.set_student_cohort("G11")
    assert_equal("G11", student_cohort.get_student_cohort)
  end

  def test_student_can_talk
     student = StudentRecord.new("Atyha", "G12", "Ruby")
     result = student.student_can_talk("Atyha")
     assert_equal("I can", result)
  end

  def test_students_fave_programming_language
    student = StudentRecord.new("Atyha", "G12", "Ruby")
    fave_prog_language = student.student_fave_prog_language("Ruby")
    assert_equal("Ruby", fave_prog_language)
  end
end

# Create a method that takes in a students favourite programming
# language and returns it as part of a string
# (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
