--https://www.hackerrank.com/challenges/diagonal-difference
strToMatrix :: String -> [[Int]]
strToMatrix = tail . map (map read . words) . lines

mainDiag :: [[Int]] -> [Int]
mainDiag x = [x !! i !! i | i <- [0..l]]
  where l = length x - 1
  
secDiag :: [[Int]] -> [Int]
secDiag x = [x !! i !! (l-i) | i <- [0..l]]
  where l = length x - 1

weirdStuff :: [[Int]] -> Int
weirdStuff m = abs $ sum md - sum sd
  where
    md = mainDiag m
    sd = secDiag m

main = interact $ show . weirdStuff . strToMatrix
