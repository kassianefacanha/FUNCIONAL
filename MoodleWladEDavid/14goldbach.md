```hs
goldbach :: Integral c => c -> [(c, c, c)]
goldbach n =   [head [(x,y,z) | y<-[1..n], z<-[1..n], primo y, primo z, x==y+z] | x<-[3..n], par x ]
par :: Integral a => a -> Bool
par x = if mod x 2 == 0 then True else False
primo :: Integral a => a -> Bool
primo x  = if length([y | y<-[1..x], mod x y ==0]) == 2 then True else False

```