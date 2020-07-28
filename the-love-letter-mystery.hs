-- https://www.hackerrank.com/challenges/the-love-letter-mystery
f str = show $ sum $ map dist $ take l $ zip str (reverse str)
  where 
  l = (`div` 2) $ length str
  dist (x, y) = abs $ (fromEnum x) - (fromEnum y)

main = interact $ unlines . (map f) . tail . lines
