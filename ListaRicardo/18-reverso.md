#### 18. reverso
INPUT: Lista u

OUTPUT: Lista das chaves de u na ordem inversa.

```hs
reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]
```