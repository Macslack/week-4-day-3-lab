require_relative("../db/sqlrunner.rb")
require("pg")
require("pry-byebug")
class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :house, :age

  def initialize(options)
    @id = options["id"].to_i
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @house = options["house"]
    @age = options["age"].to_i

  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ($1, $2, $3, $4) RETURNING *;"
    values = [@first_name, @last_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    student_hash = SqlRunner.run(sql)
    return Student.map_students(student_hash)

  end

  def self.find_by_id(id)
    sql = "SELECT * FROM students WHERE id = $1;"
    values = [id]
    students = SqlRunner.run(sql,values)[0]
    Student.new(students)
  end

    def self.map_students(student_data)
      student_data.map{|student_hash| Student.new(student_hash)}
    end

  # binding.pry()
  nil
end
