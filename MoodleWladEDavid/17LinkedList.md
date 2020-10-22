```hs
data LinkedList a = Vazia | Node a (LinkedList a) deriving (Eq, Show)
fromList [x] = Node x Vazia
fromList (x:xs) = Node x (fromList xs)
toList :: LinkedList a -> [a]
toList Vazia = []
toList (Node x ab) = x : toList ab
append :: a -> LinkedList a -> LinkedList a
append a (Node x Vazia) = Node x (Node a Vazia)
append a (Node x yz) = Node x (append a yz)   
reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList (Node x yz) =  fromList(reverse(toList (Node x yz)))


```