#### 13. calda

INPUT: Uma lista u

OUTPUT: Calda de u (u sem a primeira chave)


```hs
calda :: [a] -> [[a]]
calda [] = [[]]
calda xs = xs : (calda $ tail xs)
```
