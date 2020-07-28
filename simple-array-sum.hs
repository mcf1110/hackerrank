--https://www.hackerrank.com/challenges/simple-array-sum
main = interact $ show . sum . map read . words . (!! 1) . lines
