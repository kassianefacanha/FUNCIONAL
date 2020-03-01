#### 1. menorDeDois

INPUT: Dois números, x e y

OUTPUT: menor valor entre x e y

```hs
menorDeDois::(Int,Int) -> Int
menorDeDois (x,y) = if  x < y then x else y
```
#### 2. menorDeTres

INPUT: Três números, x, y e z

OUTPUT: menor valor entre x, y e z

 ```hs
min3 a b c | a < b && a < c = a
           | b < c = b
           | otherwise = c
```

#### 3. fatorial

INPUT: Um natural n

OUTPUT: O fatorial de n

```hs
fatorial :: Integer -> Integer
fatorial n
           | n == 0 = 1
           | n > 0 = fatorial (n-1) * n
```
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

#### 5. elemento

INPUT: Lista u e um natural n

OUTPUT: n-ésimo termo de u

EX(S):
elemento 2 [2,7,3,9] ==> 3

```hs
elemento :: [a] -> Int -> a
elemento [] k = error "List is empty"
elemento (x:xs) 0 = x
elemento (x:xs) k = elemento xs (k-1)
```
#### 6. pertence

INPUT: Lista u e valor x

OUTPUT: Verdadeiro se x ∈ u e falso do contrário

EX(S):
pertence 1 [3,7,4,2] ==> False

```hs
pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence n (x: xs) | (x == n) = True
                   | otherwise = pertence n xs

```
#### 7. total

INPUT: Lista u

OUTPUT: total de elementos de u. Não use função  length.

```hs
elementos :: [Int] -> Int 
elementos [] = 0
elementos (x:xs) = 1 + nroElementos xs
```
#### 8. maior

INPUT: Lista u

OUTPUT: A chave de valor máximo em u. Não usar
função max.

```hs
maior :: [Int] -> Int
maior [x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs
```
#### 9. frequencia
INPUT: Lista u e valor x
OUTPUT: Retorna o total de ocorrências de x em
u.
EX(S):
frequencia 5 [4,5,2,1,5,5,9] ==> 3

```hs
contaOcorrencias :: [Int] -> Int -> Int
contaOcorrencias [] _= 0
contaOcorrencias (x:xs) n | (x == n) = 1 + contaOcorrencias xs n
                          | otherwise = contaOcorrencias xs n
```

#### 10. unico
INPUT: Lista u e valor x


OUTPUT: Verdadeiro se x ocorre exatamente uma
vez em u e falso do contrário

EX(S):
unico 2 [1,2,3,2] ==> False
unico 2 [3,1] ==> False
unico 2 [2] ==> True

#### 11. maioresQue
INPUT: Número x e uma lista u de números

OUTPUT: Sublista de u cujos números sejam
maiores que x

EX(S):
maioresQue 10 [4 6 30 3 15 3 10 7] ==>
[30, 15]

```hs
maioresQue :: Int -> [Int] -> [Int]
maioresQue n lista = filter(>n) lista
```

#### 12. concat

INPUT: Duas listas a e b

OUTPUT: Concatenação entre a e b

EX(S):
concat [] [] ==> []
(concat [1,2] [3,4] ==> [1,2,3,4]

```hs
concat :: [[a]] -> [a]
concat xss = [x | xs <- xss, x <- xs]
```
```hs
concatena::[Int]->[Int]->[Int]
concatena [] l = l
concatena (a:x) l = a:concatena x l
```
#### 13. calda

INPUT: Uma lista u

OUTPUT: Calda de u (u sem a primeira chave)

EX(S):
calda [1,2,3,4] ==> [2,3,4]

```hs
tails' :: [a] -> [[a]]
tails' [] = [[]]
tails' xs = xs : (tails' $ tail xs)
```

#### 14. corpo

INPUT: Uma lista u

OUTPUT: Corpo de u (u sem a última chave)

EX(S):
corpo [1,2,3,4] ==> [1,2,3]

```hs
init' :: [a] -> [a]
init' [x] = []
init' (x:xs) = x : init' xs
```

#### 15. unique
INPUT: Lista u com possíveis chaves repetidas

OUTPUT: Lista com as chaves de u sem repetições

EX(S):
[1,2,5,2,5,7,2,5] ==> [1,2,5,7]



#### 16. menores
INPUT: Natural n e lista u

OUTPUT: Lista com os n menores elementos de u
na ordem que aparecem em u

EX(S):
1
menores 3 [5,3,1,9,7,2] ==> [3,1,2]
menores 5 [6,1,2,3,4] ==> [6,1,2,3,4]
menores 4 [3,1,2] ==> [3,1,2]


#### 17. alter

INPUT: Inteiro n

OUTPUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]


#### 18. reverso
INPUT: Lista u

OUTPUT: Lista das chaves de u na ordem inversa.

EX(S):
reverso [1,2,3,4] ==> [4,3,2,1]

```hs
reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]
```

#### 19. divide

INPUT: Lista u e um natural n

OUTPUT: Tupla de duas listas, (A, B), onde A é
formada pelas n primeiras chaves de u e B pelos
elementos restantes

EX(S):
divide [1,2,3,4] 2 ==> ([1,2],[3,4])
divide [1,2,3,4] 0 ==> ([],[1,2,3,4])
```hs
splitAt                :: Int -> [a] -> ([a],[a])
splitAt n xs           =  (take n xs, drop n xs)
```

#### 20. intercal

INPUT: Duas listas a e b

OUTPUT: Lista com os elementos de a e b intercalados

EX(S):
intercal [1,2,3] [7,8,9] ==>
[1,7,2,8,3,9]
intercal [1,2,3] [8,9] ==> [1,8,2,9,3]
intercal [] [1,2,6] ==> [1,2,6]

```hs
intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
intercala (a:xs) (b:ys) = a: b: intercala xs ys
```
#### 21. uniao

INPUT: Duas listas a e b sem repetição de chaves

OUTPUT: Lista das chaves de a e b sem repetição

EX(S):
uniao [1,2,3] [2,4,6] ==> [1,2,3,4,6]
uniao [4,5] [1] ==> [4,5,1]

#### 22. intersec

INPUT: Duas listas a e b sem repetição de chaves

OUTPUT: Lista das chaves que a e b possuem em
comum

EX(S):
intersec [3,6,5,7] [9,7,5,1,3] ==>
[3,5,7]

#### 23. sequencia

INPUT: Dois números naturais n e m

OUTPUT: Lista [m, m + 1, m + 2, · · · , m + n − 1]

EX(S):
sequencia 0 2 ==> []
sequencia 3 4 ==> [4,5,6]


#### 24. 

INPUT: Número x e lista, u, de números ordenados
ascendentemente

OUTPUT: Lista de números ordenados ascendentemente, oriunda da inserção apropriada de x em u

inserir 3 [2,7,12] ==> [2,3,7,12]

```hs
insercao ::(Ord a) => [a] -> [a]
insercao [] = []
insercao (x:xs) = insereOrd x (insercao xs)
insereOrd ::(Ord a) => a -> [a] -> [a]
insereOrd x [] = [x]
insereOrd x (y:ys)
        | x <= y = (x:y:ys)
        | otherwise = y: (insereOrd x ys)
```

#### 25. isSorted
INPUT: Lista de números, u

OUTPUT: Verdadeiro se u é ordenada e falso do  contrário

#### 26. qsort
INPUT: Lista u de objetos ordenáveis

OUTPUT: Lista ordenada das chaves de u pelo
método de ordenação rápida

EX(S):
qsort [7,3,5,7,8,4,4] ==>
[3,4,4,5,7,7,8]
```hs
quicksort::(Ord a) => [a] -> [a]
quicksort [] = []
quicksort (s:xs) = quicksort [x|x <- xs,x < s]
++ [s] ++
quicksort [x|x <- xs,x >= s]
```
#### 27. rotEsq

INPUT: Um natural n e uma lista ou string S

OUTPUT: Lista S rotacionada n vezes à esquerda

EX(S):
rotEsq 0 "asdfg" ==> "asdfg"
rotEsq 1 "asdfg" ==> "sdfga"
rotEsq 3 "asdfg" ==> "fgasd"
rotEsq 4 "asdfg" ==> "gasdf"

#### 28. rotDir

INPUT: Um natural n e uma lista ou string S

OUTPUT: Lista S rotacionada n vezes à direita

EX(S):
rotDir 0 "asdfg" ==> "asdfg"
rotDir 1 "asdfg" ==> "gasdf"
rotDir 3 "asdfg" ==> "fgasd"
rotDir 4 "asdfg" ==> "dfgas"

#### 29. upper

INPUT: Uma string S

OUTPUT: Versão em caixa alta da string S

EX(S):
upper "abc" ==> "ABC"
upper "a Casa Caiu" ==> "A CASA CAIU"
upper "tenho 45 ABCs" ==> "TENHO 45
ABCS"

#### 30. titulo
INPUT: String S

OUTPUT: Versão de S contendo todos os caracteres em caixa baixa exceto aqueles que, por serem
iniciais de palavras, devem aparecer em caixa alta

EX(S):
titulo "FuLaNo bElTrAnO silva" ==>
"Fulano Beltrano Silva"

#### 31. selec
INPUT: Uma lista qualquer u e uma lista de posições P

OUTPUT: Lista das chaves de u cujas posições estão em P

EX(S):
selec "abcdef"[0,3,2,3] ==> "adcd"
#### 32. isPalind
INPUT: Uma string qualquer S

OUTPUT: Verdadeiro se S é um palíndromo e falso
do contrário

EX(S):
isPalind "ana" ==> True
isPalind "123aa321" ==> True
isPalind "cachorro" ==> False

#### 33. primo
INPUT: Um natural n

OUTPUT: Verdadeiro se n é primo e falso do contrário
```hs
tem_divisor n [ ] = False
tem_divisor n (x:xs) = if (mod n x) == 0 then True else tem_divisor n xs
primo :: Int -> Bool
primo n = not (tem_divisor n (lcand n))
```
#### 34. sdig
INPUT: Natural n

OUTPUT: Soma dos dígitos de n

EX(S):
sdig 328464584658 ==> 63

#### 35. bubblesort

INPUT: Lista ordenável u

OUTPUT: Versão ordenada de u pelo método de ordenação em bolhas
```hs
bolha [] = []
bolha lista = bolhaOrd lista (length lista)
bolhaOrd lista 0 = lista
bolhaOrd lista n = bolhaOrd (troca lista) (n-1)
troca [x] = [x]
troca (x:y:zs)
               | x > y = y : troca (x:zs)
               | otherwise = x : troca (y:zs)
```
#### 36. compac
INPUT: Lista de números u

OUTPUT: Lista de listas. Cada lista-componente
possui um ou dois elementos. Quando possui
dois, representa uma sequência de chaves repetidas de u, sendo o primeiro valor o total de
repetições e o segundo a chave que se repete.
Quando possui um elemento contém uma chave
de u que não se repete.

EX(S):
compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] ==>
[[3,2],[3],[2,4],[2],[9],[5],[2],[4],[3,5]]

#### 37. splitints
INPUT: Lista de inteiros positivos, u

OUTPUT: Tupla de duas listas, (A, B), onde A e
B são respectivamente compostos pelos inteiros
ímpares e pares de u

EX(S):
splitints [1,2,3,4,5,6,7] =>
([1,3,5,7],[2,4,6])

#### 38. perfeito
INPUT: Número inteiro positivo, n

OUTPUT: Verdadeiro se n for um quadrado perfeito
e falso do contrário (Um quadrado perfeito é um
número inteiro cuja raiz quadrada é também um
número inteiro). Não utilizar operadores ou funções que retornem números reais.

#### 39. base
INPUT: Dois inteiros positivos, n e b (1 < b < 37)

OUTPUT: Representação na base b do inteiro n

EX(S):
base 17 2 ==> "10001"
base 26 16 ==> "1A"

#### 40. partes
INPUT: Lista u

OUTPUT: Conjunto das partes de u (O conjunto das
partes de um conjunto C é o conjunto de todos
os subconjuntos distintos e possíveis de C) 

partes [2,3,2,31] ==> [[],[2],[3],[31],[2,2],[2,3],[2,31],
[3,31],[2,2,3],[2,2,31],[2,3,31],[2,2,3,31]]