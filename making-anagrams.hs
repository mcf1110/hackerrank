-- https://www.hackerrank.com/challenges/making-anagrams
import Data.List (sort)
f [] x = length x
f x [] = length x
f (a:as) (b:bs)
  | a == b = f as bs
  | a > b = 1 + f (a:as) bs
  | otherwise = 1 + f as (b:bs)

main = interact $ show . (\[a, b] -> f a b) . (map sort) . lines
