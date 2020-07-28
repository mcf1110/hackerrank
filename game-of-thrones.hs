-- https://www.hackerrank.com/challenges/game-of-thrones
import Data.List
import Data.Bool
main = interact $ (bool "NO" "YES") . (<= 1) . length . (filter odd) . (map length) . group . sort
