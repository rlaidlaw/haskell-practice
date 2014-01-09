
-- Q9. Pack consecutive duplicate elements of lists into sublists.
--     Put repeated series of duplicate elements in separate sublists.

pack :: Eq a => [a] -> [[a]]
pack []       = []
pack [x]      = [[x]]
pack xs@(x:_) = fst b : pack (snd b)
  where b = break (/= x) xs
