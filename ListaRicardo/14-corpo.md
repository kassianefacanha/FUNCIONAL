#### 14. corpo

INPUT: Uma lista u

OUTPUT: Corpo de u (u sem a última chave)

```hs
init' :: [a] -> [a]
init' [x] = []
init' (x:xs) = x : init' xs
```