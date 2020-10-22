```hs
data Arvore a = Folha a | Ramo (Arvore a) (Arvore a) deriving (Show)
foldTree :: (a->b) -> (b->b->b) -> Arvore a -> b
foldTree f1 f2 (Folha a) = f1 a
foldTree f1 f2 (Ramo esq dir) = f2 (foldTree f1 f2 esq) (foldTree f1 f2 dir)
```