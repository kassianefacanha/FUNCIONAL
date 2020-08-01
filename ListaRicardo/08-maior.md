#### 8. maior

INPUT: Lista u

OUTPUT: A chave de valor máximo em u. Não usar
função max.

```hs
maior :: [Int] -> Int
maior [x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs
```
