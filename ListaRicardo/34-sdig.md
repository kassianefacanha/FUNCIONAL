#### 34. sdig
INPUT: Natural n

OUTPUT: Soma dos dígitos de n


````hs
sdig :: Int -> Int
sdig 0 = 0
sdig n = sdig (div n 10) + (mod n 10)
````