module Lib
    ( fib
    , isSorted
    ) where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

isSorted :: [a] -> (a -> a -> Bool) -> Bool
isSorted [] _ = True
isSorted [a] _ = True
isSorted (a1:a2:as) compare = compare a1 a2 && isSorted (a2:as) compare
