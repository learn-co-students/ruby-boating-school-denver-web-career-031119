class Instructor
  @@all = []
  attr_reader =  :first_name

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def grade_student(student, test_name, status)
    valid_test = BoatingTest.all.find{|test| test.student == student && test.test_name == test_name}

    if (valid_test)
      valid_test.status = status
      valid_test
    else
      BoatingTest.new(student, test_name, status, self)
  end

  def fail_student(student, test_name)
    self.grade_student(student, test_name, "failed")
  end

  def pass_student(student, test_name)
    self.grade_student(student, test_name, "passed")
  end
end
