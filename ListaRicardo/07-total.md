#### 7. total

INPUT: Lista u

OUTPUT: total de elementos de u. Não use função  length.

```hs
elementos :: [Int] -> Int 
elementos [] = 0
elementos (x:xs) = 1 + nroElementos xs
```