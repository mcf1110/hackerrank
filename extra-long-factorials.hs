-- https://www.hackerrank.com/challenges/extra-long-factorials
f x = product [2..x]
main = interact $ show . f . read
