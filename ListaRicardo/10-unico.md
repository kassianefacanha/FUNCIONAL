#### 10. unico

INPUT : Lista u e valor x
OUTPUT: True se x ocorre exatamente uma vez em u e false do contrário

```hs
unico x xs 
    | frequencia x xs == 1 = True
    | otherwise = False
```