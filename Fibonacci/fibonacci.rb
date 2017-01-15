def fibonacci_iterative(n)
  result = 0
  prev = 1
  prev_prev = 0
  #sequence = [prev, curr]
  return n if (n == 0 || n == 1)
  # 1, (1 + 0), (1 + 1), (2 + 1), (3 + 2), (5 + 3)...
  (n - 1).times do # n - 1 because the thing goes 1 too high otherwise
    result = prev + prev_prev
    prev_prev = prev
    prev = result
    #sequence.push(curr)
  end
  result
end

def fibonacci_recursive(n)

  return n if (0..1).include? n

  (fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))

end

puts fibonacci_iterative(5)

puts fibonacci_recursive(5)