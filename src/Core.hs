module Core where

import Data.Text
import Data.Void
import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L

mylength :: Num a1 => [a2] -> a1
mylength [] = 0
mylength (_ : xs) = 1 + mylength xs

-- type Parsec e s a = ParsecT e s Identity a

type Parser = Parsec Void Text

-- type Elf = [Int]

data Elf = Elf {calories :: [Int]}

-- pCalorie :: Parser Int
-- pCalorie = L.decimal <$ char '\n'

pElf :: Parser Elf
pElf = Elf <$> (sepBy L.decimal (char '\n'))

-- (sepBy1 (L.decimal <$ (string "\n") :: Parser Int) (string "\n"))

-- calories <- L.decimal
-- _ <- string "\n"

-- a tree, yay! it's a GRAMMAR, whoa
-- data Tree a = Nil | Branch (Tree a) a (Tree a)

data Tree a where
    Nil :: Tree a
    Branch :: Tree a -> a -> Tree a -> Tree a

data LeafTree a where
    Leaf :: a -> LeafTree a
    LeafBranch :: LeafTree a -> LeafTree a -> LeafTree a
