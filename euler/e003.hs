-- Q3. Find the largest prime factor of the number 600851475143.
euler003 :: Integer
euler003 = last (primeFactors 600851475143)

-- Naive (i.e. not very good) way of producing an infinite list of prime numbers.
primes :: [Integer]
primes = sieve [2..]
  where sieve (p:xs) = p : sieve [x | x <- xs, mod x p > 0]

-- Tests whether the given number is a prime number.
isPrime :: Integer -> Bool
isPrime n = elem n (takeWhile (<= n) primes)

-- Gets the next prime with value greater than the given number.
nextPrime :: Integer -> Integer
nextPrime n = head (dropWhile (<= n) primes)

-- Finds the prime factors of an integer.
primeFactors :: Integer -> [Integer]
primeFactors n = primeFactors' n 2

-- Helper function that produces a list of prime factors of a number
primeFactors' :: Integer -> Integer -> [Integer]
primeFactors' 0 _ = []
primeFactors' 1 _ = []
primeFactors' n d
  | mod n d == 0 = d : primeFactors' (div n d) d
  | otherwise    = primeFactors' n (nextPrime d)
