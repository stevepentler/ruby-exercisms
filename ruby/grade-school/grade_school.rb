require 'pry'

class School
  attr_reader :database

  def initialize
    @database = Database.new
  end

  def add(student, grade)
    roster = database.db
    level = roster[grade]
    level << student
    roster[grade] = level
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