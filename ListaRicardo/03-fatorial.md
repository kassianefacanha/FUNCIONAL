#### 3. fatorial

INPUT: Um natural n

OUTPUT: O fatorial de n

```hs
fatorial :: Integer -> Integer
fatorial n
           | n == 0 = 1
           | n > 0 = fatorial (n-1) * n
```