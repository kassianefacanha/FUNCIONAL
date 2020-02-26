
iguais3 ::  Num a => a -> a -> a -> a
iguais3 a b c | a == b && b == c = 3
              | a == b && b /= c = 2
              | a == c && c /= b = 2
              | b == c && a /= b = 2
              | a /= b && b /= c && a /= c = 0                  
main = do
    line1 <- getLine 
    line2 <- getLine
    line3 <- getLine
    let x = read line1 :: Int
    let	y = read line2 :: Int
    let	z = read line3 :: Int
    print $ iguais3 x y z                  