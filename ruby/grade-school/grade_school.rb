require 'pry'

class School
  attr_reader :roster

  def initialize
    @roster = Database.new.db
  end

  def add(student, level)
    roster[level] = roster[level].push(student)
  end

  def grade(level)
    roster[level].sort!
  end

  def to_h
    sort_roster
  end

  def sort_roster
    sort_enrollment = roster.sort.to_h
    sort_enrollment.map do |level, students|
      sort_enrollment[level] = students.sort
    end
    sort_enrollment
  end
end

class Database
  attr_reader :db

  def initialize
    @db = Hash.new { |hash, key| hash[key] = [] }
  end
end

class BookKeeping
  VERSION = 1
end