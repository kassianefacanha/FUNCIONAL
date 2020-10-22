```hs
acertosFold :: Eq a => [a] -> [a] -> Int
acertosFold xs ys = foldr(\z acc -> if f xs ys z then acc+1 else acc ) 0 [0..((length xs) -1)]
f :: Eq a => [a] -> [a] -> Int -> Bool
f xs ys i = if (xs !! i) == (ys !! i) then True else False

```