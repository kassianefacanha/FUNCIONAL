````hs
uniao' :: Eq a => [a] -> [a] -> [a]
uniao' l [] = l
uniao' l (h:t)
    | h `elem` l = uniao' l t
    | otherwise = uniao' (l ++ [h]) t
````