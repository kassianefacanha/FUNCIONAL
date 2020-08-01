#### 5. elemento

INPUT: Lista u e um natural n

OUTPUT: n-ésimo termo de u


```hs
elemento :: [a] -> Int -> a
elemento [] k = error "List is empty"
elemento (x:xs) 0 = x
elemento (x:xs) k = elemento xs (k-1)
```