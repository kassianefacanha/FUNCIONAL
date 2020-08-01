#### 35. bubblesort

INPUT: Lista ordenável u

OUTPUT: Versão ordenada de u pelo método de ordenação em bolhas
```hs
bolha [] = []
bolha lista = bolhaOrd lista (length lista)
bolhaOrd lista 0 = lista
bolhaOrd lista n = bolhaOrd (troca lista) (n-1)
troca [x] = [x]
troca (x:y:zs)
               | x > y = y : troca (x:zs)
               | otherwise = x : troca (y:zs)
```