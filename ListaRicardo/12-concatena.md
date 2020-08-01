#### 12. concat

INPUT: Duas listas a e b

OUTPUT: Concatenação entre a e b

```hs
concatena :: [[a]] -> [a]
concatena xss = [x | xs <- xss, x <- xs]
```
```hs
concatena::[Int]->[Int]->[Int]
concatena [] l = l
concatena (a:x) l = a:concatena x l
```