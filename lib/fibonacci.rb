# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
require 'pry'
def fibonacci(n)
  # raise NotImplementedError
  # n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
  raise ArgumentError if !n || n < 0
  return n if n < 2
  return n - 1 if n == 2
  # 0: 0 = 0
  # 1st: 1 = 1
  # 2nd: 1 = 0 + 1st


  # 3rd: 2  = 1st + 2nd
  # 4th: 3 = 2nd + 3rd
  # 5th: 5 = 3rd + 4th
  # 6th: 8 = 4th + 5th

  first = 0
  second = 1
  result = nil
  count = 1

  until count == n
    result = first + second
    first = second
    second = result
    count += 1

  end

  return result
end
