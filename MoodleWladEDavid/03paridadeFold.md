```hs
paridade :: [Bool] -> Bool
paridade (x:xs) = odd (paridade' (x:xs))

paridade' [] = 0
paridade' (x:xs) | x == True = 1 + paridade' xs | otherwise = 0 + paridade' xs
```