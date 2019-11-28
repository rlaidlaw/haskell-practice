
euler005 :: Integer
euler005 = head [x | x <- [20..], isDivisible x]
  where isDivisible n = not (any (> 0) (map (mod n) [1..20]))
