def prime_factors(value)
  require 'prime'
  n = value
  factors = []
 # n = Math.sqrt(n).to_i

  Prime.each(n) do |prime|
    if n % prime == 0 then
      factors.push(prime)
    end
  end
  return factors
end


puts prime_factors(14834).to_s