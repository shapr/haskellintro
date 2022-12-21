module Main where

import Core

main :: IO ()
main = do
    putStrLn "hello world"
    print $ mylength "hello world"
