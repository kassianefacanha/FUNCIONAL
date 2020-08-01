#### 33. primo
INPUT: Um natural n

OUTPUT: Verdadeiro se n é primo e falso do contrário

```hs
tem_divisor n [ ] = False
tem_divisor n (x:xs) = if (mod n x) == 0 then True else tem_divisor n xs
primo :: Int -> Bool
primo n = not (tem_divisor n (lcand n))
```