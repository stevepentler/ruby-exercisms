require 'pry'

class School
  attr_reader :database

  def initialize
    @database = Database.new
  end

  def add(student, grade)
    students = []
    students << student
    database.db[grade] = students

  end

  def to_h
    database.db
  end
end

class Database
  attr_reader :db

  def initialize
    @db = Hash.new { |hash, key| hash[key] = [] }
  end
end