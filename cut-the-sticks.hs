--https://www.hackerrank.com/challenges/cut-the-sticks
cutSticks :: [Int] -> [Int]
cutSticks [] = []
cutSticks ls = (length ls) : (cutSticks $ filter (>0) $ map (\x -> x-(minimum ls)) ls)

main = interact $ unlines . (fmap show) . cutSticks . (fmap read) . words . (!! 1) . lines
