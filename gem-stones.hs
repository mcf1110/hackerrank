-- https://www.hackerrank.com/challenges/gem-stones
import qualified Data.Set as Set
main = interact $ show . Set.size .(foldl1 Set.intersection) . (map Set.fromList) . tail . lines
