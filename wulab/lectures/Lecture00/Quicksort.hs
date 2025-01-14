f []     = []
f (x:xs) = f ys ++ [x] ++ f zs
           where
             ys = [a | a <- xs, a <= x]
             zs = [b | b <- xs, b >  x]

{-
f [3,2,1,4,5,6]
f [2,1] ++ [3] ++ f [4,5,6]
f [1] ++ f [2] ++ f[] ++ [3] ++ f [] ++ f [4] ++ f [5,6]
f [1] ++ f [2] ++ f[] ++ [3] ++ f [] ++ f [4] ++ f [] ++ f [5] ++ f [6]
f [] ++ [1] ++ f [] ++ f [] ++ [2] ++ f [] ++ f [] ++ [3] ++ f [] ++ f [] ++ [4] ++ f [] ++ f [] ++ [5] ++ f [] ++ f [] ++ [6] ++ f []
[] ++ [1] ++ [] ++ [] ++ [2] ++ [] ++ [] ++ [3] ++ [] ++ [] ++ [4] ++ [] ++ [] ++ [5] ++ [] ++ [] ++ [6] ++ []
[1,2,3,4,5,6]
-}
