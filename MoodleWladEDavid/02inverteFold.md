```hs
inverteFold :: [a] -> [a]
inverteFold [] = []
inverteFold xs = foldl (\acc a -> acc ++ a) [last xs] [init xs]
```