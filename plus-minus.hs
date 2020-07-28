--https://www.hackerrank.com/challenges/plus-minus
strToList :: String -> [Int]
strToList = (!!1) . map (map read . words) . lines

reducer ::  (Int, Int, Int, Int) -> Ordering -> (Int, Int, Int, Int)
reducer (p, n, z, c) LT = (p + 1, n, z, c + 1)
reducer (p, n, z, c) GT = (p, n + 1, z, c + 1)
reducer (p, n, z, c) EQ = (p, n, z + 1, c + 1)

countList :: [Int] -> (Int, Int, Int, Int)
countList = foldl reducer (0,0,0,0) . map (compare 0)

divide :: (Int, Int, Int, Int) -> (Float, Float, Float)
divide (a,b,c, d) =  ((fromIntegral a)/q, (fromIntegral b)/q, (fromIntegral c)/q)
  where q = fromIntegral d
  
showTuple :: (Float, Float, Float) -> String
showTuple (a,b,c) = show a ++ "\n" ++ show b ++ "\n" ++ show c

main = interact $ showTuple . divide . countList . strToList
