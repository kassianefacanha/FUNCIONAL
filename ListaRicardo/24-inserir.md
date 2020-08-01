## 24. inserir

INPUT: Número x e lista, u, de números ordenados
ascendentemente

OUTPUT: Lista de números ordenados ascendentemente, oriunda da inserção apropriada de x em u

inserir 3 [2,7,12] ==> [2,3,7,12]

```hs
insercao ::(Ord a) => [a] -> [a]
insercao [] = []
insercao (x:xs) = insereOrd x (insercao xs)

```