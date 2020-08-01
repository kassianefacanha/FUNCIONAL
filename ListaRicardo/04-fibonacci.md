#### 4. fibonacci

INPUT: Inteiro positivo n

OUTPUT: n-ésimo termo da sequência de Fibonacci
(iniciando em com 0 e 1)

```hs
fib :: Int -> Int
fib n
      | n == 0 = 0
      | n == 1 = 1
      | n > 1 = fib (n-2) + fib (n-1)
```