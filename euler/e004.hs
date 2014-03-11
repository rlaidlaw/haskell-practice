-- Q4. Find the largest palindrome made from the product of two 3-digit numbers.
euler004 :: Integer
euler004 = maximum [x * y | x <- [100..999], y <- [100..999], isPalindrome (x * y)]
  where isPalindrome n = (show n) == reverse (show n)
