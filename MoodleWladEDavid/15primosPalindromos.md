```hs
primosPalindromo :: [Integer]
primosPalindromo = [ z | z<-[1..], primoPali z, palindromo z] 
primoPali :: Integral a => a -> Bool
primoPali x  = if length([y | y<-[1..x], mod x y ==0]) == 2 then True else False
palindromo :: Show a => a -> Bool
palindromo n = show n == reverse (show n)

```