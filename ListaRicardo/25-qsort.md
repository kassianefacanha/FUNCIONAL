#### 26. qsort
INPUT: Lista u de objetos ordenáveis

OUTPUT: Lista ordenada das chaves de u pelo método de ordenação rápida

```hs
quicksort::(Ord a) => [a] -> [a]
quicksort [] = []
quicksort (s:xs) = quicksort [x|x <- xs,x < s] ++ [s] ++
quicksort [x|x <- xs,x >= s]
```