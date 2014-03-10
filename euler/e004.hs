import Data.List

-- Q4. Find the largest palindrome made from the product of two 3-digit numbers.
--     This is a very inefficient solution that takes a long time to run!!!
euler004 :: Integer
euler004 = largestPalindrome (sort (productList [900..999]))

largestPalindrome :: [Integer] -> Integer
largestPalindrome xs
  | isPalindrome (show (last xs)) = last xs
  | otherwise                     = largestPalindrome (init xs)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome (x:xs)
  | x == last xs = isPalindrome (init xs)
  | otherwise    = False

productList :: [Integer] -> [Integer]
productList xs = nub [x * y | x <- xs, y <- xs]
