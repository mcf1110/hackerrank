-- https://www.hackerrank.com/challenges/two-strings
import Data.List (sort)
import Data.Bool (bool)
f (a:as) (b:bs)
  | a == b = True
  | a > b = f (a:as) bs
  | otherwise = f (as) (b:bs)
f _ _ = False
g (x:y:ls) = (f (sort x) (sort y)):(g ls)
g _ = []
main = interact $ unlines . (map (bool "NO" "YES")) . g . tail . lines
