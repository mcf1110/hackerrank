-- https://www.hackerrank.com/challenges/absolute-permutation

--import Data.List (permutations)
import qualified Data.Set as S
dft [] = [[-1]]
dft x = x
mainWith fn = interact $ unlines . (map $ unwords . (map show) . fn . (map read) . words) . tail . lines
------- BRUTE FORCE IMPLEMENTATION -------
-- isAbsolute k x = all (== k) ks where ks = map abs $ zipWith (-) x [1..]
-- f [t, k] = minimum $ dft $ filter (isAbsolute k) $  permutations [1..t]
--main = mainWith f
------------------------------------------

main = mainWith g

data Tree a = Node a [Tree a] deriving Show
g [t, k] = minimum $ dft $ filter (\x -> length x == t) $ toLists $ pruneTree k $ buildTree t
buildTree t = Node Nothing $ map (\x -> build x $ S.fromList total) total
    where 
        total = [1..t]
        build el st = Node (Just el) (zipWith build els sets)
            where 
                without = S.delete el st
                l = [0..((S.size without)-1)]
                sets = map (`S.deleteAt` without) l
                els = map (`S.elemAt` without) l
pruneTree k tree = go 0 tree
    where
        go x (Node mb@(Just v) ls)
            | abs (v - x) /= k = Node Nothing []
            | otherwise = Node mb (map (go (x+1)) ls)
        go x (Node mb ls) = Node mb (map (go (x+1)) ls)
toLists (Node Nothing xs) = xs >>= toLists
toLists (Node (Just v) xs) = case bnd of 
        [] -> [[v]]
        vs ->  map (v:) $ vs
        where bnd = xs >>= toLists
