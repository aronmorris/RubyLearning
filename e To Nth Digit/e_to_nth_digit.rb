require 'bigdecimal/math'
def get_e(digits)
  e = BigMath::E(digits)
  return e
end

puts get_e(40)