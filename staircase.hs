--https://www.hackerrank.com/challenges/staircase
spaces = repeat ' '
hash = repeat '#'

stair :: Int -> String
stair x = unlines [ (take (x-l) spaces) ++ (take l hash) | l <- [1..x]]

main = interact $ stair . read
