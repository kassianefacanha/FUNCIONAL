#### 27. rotEsq
INPUT: Um natural n e uma lista ou string S

OUTPUT: Lista S rotacionada n vezes à esquerda


````hs
rotEsq :: Int -> String -> String
rotEsq 0 xs = xs
rotEsq n xs = rotEsq (n - 1) (tail $ xs ++ [head xs])
````