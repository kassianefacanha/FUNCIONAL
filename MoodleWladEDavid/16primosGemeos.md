```hs
primosGemeos :: [(Integer, Integer)]
primosGemeos =  [ (a,b) | (a,b)<-(zip (tail [ a | a<-[1..], primo a]) (tail (tail [ a | a<-[1..], primo a]))), b-a==2 ]
primo :: Integral a => a -> Bool
primo x  = if length([y | y<-[1..x], mod x y ==0]) == 2 then True else False

```