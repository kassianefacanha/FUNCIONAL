#### 28. rotDir
INPUT: Um natural n e uma lista ou string S

OUTPUT: Retorna o total de ocorrências de x em u.


````hs
rotDir :: Int -> String -> String
rotDir 0 xs = xs
rotDir n xs = rotDir (n - 1) (init $ (last xs):xs)
````