module Uzd1
where

import Data.Bool

data Move = Move {
    posX :: Int,
	posY :: Int,
	z :: Char,
	prevMoves :: String
} deriving Show

extractX :: Move -> Int
extractX (Move x _ _ _) = x

extractY :: Move -> Int
extractY (Move _ y _ _) = y

extractPlayer :: Move -> Char
extractPlayer (Move _ _ z _) = z

extractPrevMoves :: Move -> String
extractPrevMoves (Move _ _ _ pmoves) = pmoves

removeSpaces :: String -> String