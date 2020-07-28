-- https://www.hackerrank.com/challenges/alternating-characters
import Data.List (group)
deletions :: String -> Int
deletions s = sum $ map (\x -> x-1) $ map length $ filter (\x -> length x > 1) $ group s

main = interact $ unlines . (map $ show . deletions) . tail . lines
