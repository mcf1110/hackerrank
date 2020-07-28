--https://www.hackerrank.com/challenges/caesar-cipher-1
import Data.Char (isAlpha, isUpper, ord, chr )

rotate :: Char -> Char -> Int -> Char -> Char
rotate mini maxi rot ch = chr $ f + rem (c + rot) t
  where 
    f = ord mini 
    t = (ord maxi) - f + 1
    c = (ord ch) - f

caesar :: Int -> Char -> Char
caesar rot ch
  | not $ isAlpha ch = ch
  | isUpper ch = rotate 'A' 'Z' rot ch
  | otherwise = rotate 'a' 'z' rot ch

main = interact $ (\[s,k] -> caesar (read k) <$> s) . tail . lines
