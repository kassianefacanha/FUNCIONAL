#### 16. menores
INPUT: Natural n e lista u

OUTPUT: Lista com os n menores elementos de u na ordem que aparecem em u


````hs
menores :: Int -> [Int] -> [Int]
menores 0 xs = []
menores n xs = if (head xs) `elem` (take n $ sort xs)
                        then (head xs):menores (n-1) (tail xs)
                        else menores n (tail xs)
````