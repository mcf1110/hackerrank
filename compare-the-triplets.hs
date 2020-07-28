--https://www.hackerrank.com/challenges/compare-the-triplets
strToLists :: String -> [[Integer]]
strToLists = map (map read . words) . lines

listToTuple :: [a] -> (a,a)
listToTuple (x:y:_) = (x,y)
listToTuple _ = error ""

tupleToOrds :: Ord a => ([a],[a]) -> [Ordering]
tupleToOrds = uncurry $ zipWith compare

ordsToTuple :: [Ordering] -> (Int, Int)
ordsToTuple x = (gt, lt)
  where 
    gt = length $ filter (==GT) x
    lt = length $ filter (==LT) x
    

showTuple :: (Int, Int) -> String
showTuple (x, y) = show x ++ " " ++ show y

main = interact $ showTuple . ordsToTuple . tupleToOrds . listToTuple . strToLists
