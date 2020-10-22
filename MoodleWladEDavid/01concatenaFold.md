
```hs
concatena :: [[a]] -> [a]
concatena [] = []
concatena (x:xs) = x ++ concatena xs

concatenaFold :: [[a]] -> [a]
concatenaFold [] = []
concatenaFold (x:xs) = foldl (\acc a -> acc ++ a) x xs
```