#### 6. pertence

INPUT: Lista u e valor x

OUTPUT: Verdadeiro se x ∈ u e falso do contrário


```hs
pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence n (x: xs) | (x == n) = True
                   | otherwise = pertence n xs

```