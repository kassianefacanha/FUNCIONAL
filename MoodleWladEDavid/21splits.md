```hs
splits :: [a] -> [([a],[a])]
splits [] = [([],[])]
splits (x:xs) = [(x:y,z) | (y,z) <- splits xs] ++ [(y,x:z) | (y,z) <- splits xs]

```