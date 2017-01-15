def get_primes
  require 'prime'
  next_prime = 0
  while true
    puts "'y' to continue, any to exit"
    answer = gets.chomp

    break unless answer == 'y'

    puts Prime.lazy.select {|n| n > next_prime; next_prime = n if n > next_prime}.take(1).to_a

  end
end

get_primes