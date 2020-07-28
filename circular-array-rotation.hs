-- https://www.hackerrank.com/challenges/circular-array-rotation
rotate x = (drop x) . cycle . reverse
solve :: [String] -> [Int]
solve (params:strArray:strQueries) = map (xs !!) queries
  where 
    a = map read $ words strArray
    l = length a
    rot = read $ (words $ params) !! 1
    xs = rotate rot a
    queries = map ( ((l-1)-) . read) $ strQueries

main = interact $ unlines . (map show) . solve . lines
