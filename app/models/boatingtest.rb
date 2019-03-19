class BoatingTest
  @@all = []

  attr_accessor :student, :test_name, :status, :instructor

  def self.all
    @@all
  end

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor

    @@all << self
  end

  

end
