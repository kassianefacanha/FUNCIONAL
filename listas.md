Uma lista e uma estrutura de dados que representa uma 
colecao de objetos homogeneos em sequência. 
Para alcancar qualquer elemento, todos os anteriores a
ele devem ser recuperados.
Em programacao, uma lista vazia (representada por [ ] em
Haskell) e a estrutura-base da existencia de uma lista. 
   


Uma lista e composta sempre de dois segmentos: cabeca
(head) e corpo (tail). A cabec¸a da lista e sempre o primeiro ´
elemento.

    [’a’,’b’,’c’,’d’]

   "abcd"

    ’a’:[’b’,’c’,’d’]

   "abcd" [ 'a', 'b', 'c', 'd' ] 'a': [ 'b', 'c', 'd' ]

primeiro elemento corpo da lista
   

Operador (:)
O sımbolo (:) e o operador de construcao de listas. Toda lista e
construıda atraves deste operador. Podemos verificar que este 
operador e polimorfico, usando o comando type:


    :type (:)

   (:) :: a -    [a] -    [a]

A letra a indica uma fam´ılia de tipos (numericos, caracteres, 
tuplas, ...). O operador deve ser aplicado a argumentos de um `
mesmo tipo.


    ’a’:[’b’,’c’,’d’]

   "abcd"

    2:[4,6,8]
    [2,4,6,8]
   

   
   [ 'a', 'b', 'c', 'd' ] 'a': [ 'b', 'c', 'd' ]

primeiro
elemento
corpo da
lista

    ’a’:[’b’,’c’,’d’]

   "abcd"

    1:[2,3]

   [1,2,3]

    [’a’,’c’,’f’] == ’a’:[’c’,’f’]

    True

    [1,2,3] == 1:2:3:[]

   True

    1:[2,3] == 1:2:[3]

   True

    "papel" == ’p’:[’a’,’p’,’e’,’l’]

   True
   

Listas e Tipos
Uma lista e uma colecao de elementos de um dado tipo. Para 
todo tipo t existe uma lista [t] para seus elementos.

    [1,2,3]::[Int]

   [1,2,3]

    [True,True,False]::[Bool]

   [True,True,False]

    [(1,2),(4,5),(0,8)]::[(Int,Int)]

   [(1,2),(4,5),(0,8)]

    [[2,3,4],[5],[],[3,3]]::[[Int]]
[[2,3,4],[5],[],[3,3]]
   

Listas bem formadas
Alguns exemplos de listas bem formadas sao: 

Letras::[Char]

Letras = [’a’,’b’,’c’,’z’]

Inteiros::[Int]

Inteiros = [5,23,4,66]

Booleanos::[Bool]

Booleanos = [True, True, False]

Tuplas::[(Int,Char)]

Tuplas = [(2,’v’),(3,’g’),(5,’d’)]

Palavras::[[Char]]

Palavras = ["ana", [’a’,’b’,’a’]]
   

Escrevendo Listas
Pode-se definir uma lista indicando os limites inferior e superior
de um conjunto conhecido, onde existe uma relacao de ordem entre os elementos, no seguinte formato:

[ < limite-inferior    .. < limite-superior    ]

    [1..4]     [’m’..’n’]

   [1,2,3,4] "mn"

    [1,3..6]     [’a’,’d’..’p’]

   [1,3,5] "adgjmp"

    [3.1..7]     [-1,-3..(-10)]

   [3.1,4.1,5.1,6.1,7.1] [-1,-3,-5,-7,-9]
   

Escrevendo Listas
Podemos definir qualquer progressao aritmetica em uma lista 
utilizando a seguinte notac¸ao: 


[ <1o. termo   , <2o. termo    .. < limite-superior    ]

    [7,6..3]     [6,5..0]

   [7,6,5,4,3] [6,5,4,3,2,1,0]

    [-5,2..16]     [5,6..5]

[-5,2,9,16] [5]
    [1,1.1 .. 2]
[1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0]
   

Listas por Compreensao

A descricao de uma lista pode ser feita em termos dos 
elementos de uma outra lista. Por exemplo, temos a lista 
L1 =[2,4,7]. Uma lista definida por compreensao pode ser escrita: 

    [ 2 * n | n <- L1 ]

   [4,8,14]


A lista resultante contem todos os elementos da lista L1, 
multiplicados por 2. Assim, podemos ler:
Obtenha todos os 2*n dos elementos n contidos em
L1 = [2,4,7].
   

Listas por Compreensao

Definicao
A definicao de listas por compreensao e feita por um construtor de 
listas que utiliza conceitos e notacoes da teoria dos conjuntos. 

Assim, para um conjunto A temos:
A = { E(x) | x ∈ C ∧ P1(x) ∧ . . . ∧ Pn(x) }

sendo E(x) uma expressao em ˜ x, C um conjunto inicial para os
valores de x e os varios ´ Pi(x) sao proposicoes em  x.
O conjunto A e escrito em Haskell da seguinte forma: 
A = [ E(x) | x <- lista, P1(x), ... , Pn(x) ]
   

Listas por Compreensao
O conjunto dos quadrados dos numeros inteiros e definido pela 
expressao: 


A = { x
2
| X ∈ N }

Em Haskell, podemos escrever A para listas finitas ou infinitas
da seguinte forma:

listaQuad = [ x^2 | x <- [1..30] ]

listaQuadInf = [ x^2 | x <- [1..] ]
   

Listas por Compreensao

listaQuad = [ x^2 | x <- [1..30] ]

   listaQuad

[1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,
324,361,400,441,484,529,576,625,676,729,784,841,900]

listaQuadInf = [ x^2 | x <- [1..] ]

    listaQuadInf

[1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,
324,361,400,441,484,529,576,625,676,729,784,841,900,961,
1024,1089,1156,1225,1296,1369,1444,1521,1600 {Interrupted!}

    elem 4 listaQuadInf

True

A funcao elem verifica se um elemento pertence a uma lista. Em caso positivo, retorna True, senao False.
   

Gerador e Expressoes Booleanas 
Na definic¸ao de lista por compreensao, o sımbolo <- e´
chamado de gerador da lista, pois permite obter os dados atraves dos quais a nova lista ser a construıda.
Os geradores podem ser combinados com um ou mais
testes, que sao expressoes booleanas. 

listaQuadPares = [x^2 | x <- [1..20], even x]

Hugs    listaQuadPares

[4,16,36,64,100,144,196,256,324,400]
   

Gerador e Expressoes Booleanas 

listaQuadParesSup = [x^2 | x <- [1..20], even x, x     6]

Hugs    listaQuadParesSup

[64,100,144,196,256,324,400]

listaPares = [even x | x <- [1..20] ]

Hugs    listaPares

[False,True,False,True,False,True,False,True,
False,True]
   

Listas com mais de um Gerador
Adicionalmente, e possıvel que mais de um gerador seja
utilizado na definicao de uma lista por compreensao: 

Hugs    [ x*y | x <- [1,2,3], y <- [3,7,9]]

[3,7,9,6,14,18,9,21,27]

Hugs    [(x,y) | x <- [1,3,5], y <- [2,4,6], x < y]

[(1,2),(1,4),(1,6),(3,4),(3,6),(5,6)]
Hugs    [(x,y) | x <- [1..3], y <- [1..3] ]

[(1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3)]

Hugs    [(x,y) | x <- [1..3], y <- [x..3] ]

[(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]
   

Utilizac¸ao de listas por compreensao
Podemos utilizar a tecnica de contrucao de listas por 
compreensao na codificac¸ ˜ ao de programas. 
{- A fun¸c~ao dobraPos duplica todos os numeros positivos
maiores que zero de uma lista -}

dobraPos::[Int]-   [Int]

dobraPos xs = [2*x | x<-xs, x   0]

   dobraPos [3,4,-1,0,5]

[6,8,10]
   

Utilizac¸ao de listas por compreensao
A funcao dobraPos pode ser tamb ˜ em escrita atraves do 
construtor de listas (:) de forma recursiva:

-- Funcao definida atrav´es de lista por compreensao

dobraPos::[Int]-   [Int]

dobraPos xs = [2*x | x<-xs, x   0]

-- Funcao recursiva

dobraPosR::[Int]-   [Int]

dobraPosR [] = []

dobraPosR (a:as) = if a     0 then 2*a:

dobraPosR as

else dobraPosR as
   

Utilizac¸ao de listas por compreensao
A func¸ao fatores retorna cada um dos fatores de um numero, e 
pode ser usada para verificar se um numero e primo. 

fatores n = [i | i<-[1..n], n ‘mod‘ i == 0]

    fatores 90

[1,2,3,5,6,9,10,15,18,30,45,90]

primo n = if (fatores n) == [1,n] then True
else False

    primo 90

False
   

Funcoes Pre-definidas 

A tabela abaixo relaciona algumas func¸oes pre-definidas em 
Haskell para a manipulac¸ao de listas: 

Funcao Descricao Exemplo

(++) Concatena duas listas     

[1,2,3]++[4,5,6]

[1,2,3,4,5,6]

concat Recebe uma lista de listas e as     

concat [[1,2],[3,4]]

concatena [1,2,3,4]

head Retorna o primeiro elemento da 

lista     head "abc"

’a’

tail Retorna o corpo da lista     

tail "abc"

"bc"

last Retorna o ultimo elemento da lista    

last [4,3,2]

2
   

elem Verifica se um elemento pertence     

elem 5 [1,5,10]

a lista ` True

null Retorna verdadeiro (True) se uma    

null []

lista e vazia ´ True

length Retorna o tamanho de uma lista    

length "abcxyz"

6

(!!) Operador de ındice da lista, retorna     

[1,3,5,7,9] !!0

o elemento mantido numa posicao  1   

 (!!)[’b’,’g’,’r’,’w’] 3

’w’

replicate Constroi uma lista pela replicacao de     

replicate 4 ’c’

um elemento "cccc"

reverse Inverte os elementos de uma lista     

reverse [4,5,2,2]

[2,2,5,4]
   
take Gera uma lista com os n primeiros     

take 2 [’d’,’f’,’g’,’r’]

elementos da lista original "df"

drop Retira n elementos do inıcio da lista     

drop 3 [3,3,4,4,5,5]

[4,5,5]

takeWhile Retorna o maior segmento inicial de     

takeWhile (<10) [1,3,13,4]

uma lista que satisfaz uma condicao[1,3]

dropWhile Retira o maior segmento inicial de     

dropWhile (<10) [1,3,13,4]

uma lista que satisfaz uma condicao[13,4]

replicate Constroi uma lista pela replicacao    

replicate 4 ’c’

de um elemento "cccc"

reverse Inverte os elementos de uma lista     

reverse [4,5,2,2]

[2,2,5,4]
   

splitAt Divide uma lista num par de sub-listas     

splitAt 2 [3,4,2,1,5]

fazendo a divisao numa determinada posicao ([3,4],[2,1,5])

zip Recebe duas listas como entrada e retorna    

 zip [1,2] [’a’,’b’]

uma lista de pares [(1,’a’),(2,’b’)]

sum Retorna a soma dos elementos da lista     

sum [4,5,7,2,1]

19

product Retorna o produto dos elementos da lista     

product [5,3,6,1]

90

maximum Retorna o maior elemento de uma lista     

maximum [4,5,1,2]

5

minimum Retorna o menor elemento de uma lista     

minimum [5.2,0.3,7.2]

0.3
   
geraPalindrome n = [1..n] ++ reverse [1..n]

    geraPalindrome 5

[1,2,3,4,5,5,4,3,2,1]

fat n = product [1..n]

    fat 5

120

fib n = fiblist !! n
where fiblist = 1:1:[ a+b | (a,b) <-
zip fiblist (tail fiblist) ]

    fib 4

5
   

Utilizac¸ao da funcao observe para analisar os calculos ´
realizados por uma func¸ao: ˜
import Hugs.Observe

fib n = (observe "fun" fiblist !! n)
where
fiblist = 1:1:[ a+b | (a,b) <-
(observe "gera"
zip fiblist (tail fiblist)) ]

Main    fib 7

21

    Observations 

fun
(1 : 1 : 2 : 3 : 5 : 8 : 13 : 21 : _)

gera

{ \ (1 : 1 : 2 : 3 : 5 : 8 : 13 : 21 : _)

(1 : 2 : 3 : 5 : 8 : 13 : 21 : _)
-    (1,1) : (1,2) : (2,3) : (3,5) : (5,8) : (8,13) : _
}
   

Funcoes Recursivas 


Para que possamos contar quantos elementos estao contidos 
numa lista, podemos escrever uma func¸ao recursiva: 

conta:: [t] -    Int

conta [] = 0


conta (a:x) = 1 + conta x

    conta [’a’,’b’,’c’]

3


Conta e uma funcao polimorfica, servindo para listas de qualquer tipo (”t”e uma variavel de tipo, e pode ser substituida por qualquer tipo).
   

Obter os N primeiros termos de uma lista

primeiros::Int-    [t] -    [t]

primeiros 0 _ = []

primeiros _ [] = []

primeiros n (a:as) = a: primeiros (n-1) as

    primeiros 2 [’a’,’b’,’c’]

"ab"
   

Funcao Pertence

pertence:: Eq t =    t -    [t] -    Bool

pertence a [] = False

pertence a (x:z) = if (a == x) then True
else pertence a z

    pertence 3 [4,5,2,1]

False
   

Encontrar o maior elemento da lista


maior [x] = x

maior (x:y:resto) | x     y = maior (x: resto)

| otherwise = maior (y: resto)

    maior [4,5,2,1]

5


Funcao Uniao Recursiva 


pertence :: Eq t =    t -    [t] -    Bool

pertence a [] = False

pertence a (x:z) = if (a == x) then True
else pertence a z

uniaoR:: Eq t =    [t] -    [t] -    [t]

uniaoR [] l = l


uniaoR (x:xz) l = if pertence x l then uniaoR xz l

else x: uniaoR xz l

    uniaoR [2,3,4] [2,4,5,6]

[3,2,4,5,6]
   

Func¸ao Uni ˜ ao - por compreens ˜ ao de listas ˜

pertence :: Eq t =    t -    [t] -    Bool

pertence a [] = False

pertence a (x:z) = if (a == x) then True
else pertence a z

uniao :: Eq t =    [t] -    [t] -    [t]

uniao as bs = as ++ [b | b <- bs, not (pertence b as)]

    uniao [2,3,4] [2,4,5,6]

[2,3,4,5,6]
   


Bibliografia
1. Haskell - Uma abordagem pratica. Cl ´ audio C ´ esar de S ´ a e ´
Marcio Ferreira da Silva. Novatec, 2006. ´
2. Haskell - The craft of functional programming. Simon
Thompson. Pearson, 1999.
