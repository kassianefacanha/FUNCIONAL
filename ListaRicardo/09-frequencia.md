#### 9. frequencia
INPUT: Lista u e valor x

OUTPUT: Retorna o total de ocorrências de x em u.

```hs
frequencia :: [Int] -> Int -> Int
frequencia [] _= 0
frequencia (x:xs) n | (x == n) = 1 + frequencia xs n
                          | otherwise = frequencia xs n
```
