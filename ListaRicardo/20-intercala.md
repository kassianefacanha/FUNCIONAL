#### 20. intercal

INPUT: Duas listas a e b

OUTPUT: Lista com os elementos de a e b intercalados

```hs
intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
intercala (a:xs) (b:ys) = a: b: intercala xs ys
```