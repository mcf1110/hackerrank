--https://www.hackerrank.com/challenges/chocolate-feast
chocolate :: Int -> Int -> Int -> Int
chocolate n c m = choc 0 n
  where 
    choc w n
      | n < c = 0
      | otherwise = bought + (choc finalW finalN)
        where 
          bought = n `div` c
          remainingW = w + bought
          finalW = remainingW `mod` m
          finalN = (n `mod` c) + (c * (remainingW `div` m))

main = interact $ unlines . (fmap (show . c' . words)) . tail . lines
  where c' [n, c, m] = chocolate (read n) (read c) (read m)
