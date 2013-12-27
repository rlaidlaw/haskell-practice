
-- Q10. Run length encoding of a list.

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode l  = zip (map length (pack l)) (map head (pack l))

pack :: Eq a => [a] -> [[a]]
pack []      = []
pack [x]     = [[x]]
pack xs@(x:_) = fst b : pack (snd b)
  where b = break (/= x) xs
