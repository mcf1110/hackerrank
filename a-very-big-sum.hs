--https://www.hackerrank.com/challenges/a-very-big-sum
main = interact $ show . sum . map read . words . (!! 1) . lines
