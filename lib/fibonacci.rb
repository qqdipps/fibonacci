# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the nth fib number
# Space complexity: O(1)
def fibonacci(n)
  raise ArgumentError.new if !n || n < 0
  return n if n < 2
  fib, prev_fib = 1, 1
  (n - 2).times { fib, prev_fib = (fib + prev_fib), fib }
  return fib
end
