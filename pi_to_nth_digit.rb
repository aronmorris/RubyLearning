class PiToNthDigit

  require 'bigdecimal/math'

  include BigMath

  def self.nth_digit(digits)

    pi = BigMath::PI(digits)

   return pi.to_s

  end

end

digits = PiToNthDigit

puts digits.nth_digit(1)

puts digits.nth_digit(200)