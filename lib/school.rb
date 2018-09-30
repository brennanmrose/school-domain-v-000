require 'pry'

class School
  attr_accessor :roster, :grade, :student_name, :add_student, :sort
  attr_reader :name
 
  def initialize(name)
    @roster = {}
    @name = name
  end 
  
  def add_student(student_name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_hash = Hash.new
    @roster.collect do |grade, student_name|
      sorted = @roster[grade].sort
      new_hash[grade] = sorted
    end
    new_hash
  end
end 