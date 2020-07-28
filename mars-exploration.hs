-- https://www.hackerrank.com/challenges/mars-exploration
main = interact $ show . length . (filter id) . (zipWith (/=) (cycle "SOS"))
