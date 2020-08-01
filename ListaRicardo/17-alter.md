#### 17. alter

INPUT:  Inteiro n

OUTPUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]

````hs
alter :: Int -> [Int]
alter 1 = [1, -1]
alter n = alter (n - 1) ++ [n, -n]
````