module Core where

mylength :: Num a1 => [a2] -> a1
mylength [] = 0
mylength (_ : xs) = 1 + mylength xs
