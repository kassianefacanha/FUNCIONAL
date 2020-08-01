#### 32. isPalind
INPUT: Uma string qualquer S

OUTPUT: Verdadeiro se S é um palíndromo e falso do contrário


````hs
isPalind :: String -> Bool
isPalind s = if s == reverse s
                then True
                else False
````