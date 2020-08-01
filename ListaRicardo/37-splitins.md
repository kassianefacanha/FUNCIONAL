#### 37. splitints
INPUT: Lista de inteiros positivos, u


OUTPUT: Tupla de duas listas, (A,B), onde A e B são respectivamente compostos pelos inteiros ímpares e pares de u


````hs
impares :: [Int] -> [Int]
impares [] = []
impares xs = if mod (head xs) 2 == 1
                then (head xs): impares (tail xs)
                else impares (tail xs) 
pares :: [Int] -> [Int]
pares [] = []
pares xs = if mod (head xs) 2 == 0
                then (head xs): pares (tail xs)
                else pares (tail xs)
splitints :: [Int] -> ([Int],[Int])
splitints xs = (impares xs, pares xs)
````