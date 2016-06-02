require 'pry'

class School
  attr_reader :roster

  def initialize
    @roster = Database.new.db
  end

  def add(student, level)
    grade_enrollment = roster[level]
    grade_enrollment << student
    roster[level] = grade_enrollment
  end

  def grade(level)
    roster[level].sort!
  end

  def to_h
    sort_roster
  end

  def sort_roster
    sort_levels = roster.sort.to_h
    sort_levels.map do |level, students|
      sort_levels[level] = students.sort
    end
    sort_levels
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