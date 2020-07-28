-- https://www.hackerrank.com/challenges/save-the-prisoner
solve :: Int -> Int -> Int -> Int
solve p c s = 1 + ((s + c - 2) `mod` p)
s [a,b,c] = solve (read a) (read b) (read c)
main = interact $ unlines . (map (show . s . words)) . tail . lines
