require 'prime'
require 'pry'

class Prime

  def self.nth(number)
    primes = Prime.first(number)
    if primes.empty?
      raise ArgumentError
    else
      primes.last
    end

  end
end