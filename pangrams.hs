-- https://www.hackerrank.com/challenges/pangrams
import Data.Char (toLower)
import Data.List
ts b = (if b then "" else "not ") ++ "pangram"
main = interact $ ts . (== ['a'..'z']) . nub . sort . (map toLower) . (filter (/= ' '))
