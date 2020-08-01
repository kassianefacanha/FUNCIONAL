#### 03. delete
INPUT : Valor x e lista u
OUTPUT: Versão de u com a primeira aparição de x

````hs
delete' :: Eq a => a -> [a] -> [a]
delete' _ [] = []
delete' x (h:t)
    | x == h = t
    | otherwise = h:delete' x t

````