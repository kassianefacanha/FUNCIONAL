#### 19. divide

INPUT: Lista u e um natural n

OUTPUT: Tupla de duas listas, (A, B), onde A é
formada pelas n primeiras chaves de u e B pelos
elementos restantes

```hs
divide                :: Int -> [a] -> ([a],[a])
divide n xs           =  (take n xs, drop n xs)
```