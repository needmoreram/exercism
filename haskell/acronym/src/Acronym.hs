module Acronym (abbreviate) where
import Data.Char

abbreviate :: String -> String
abbreviate xs = concat $ map headAndCaps (words xs) where
    headAndCaps (y:ys) = [toUpper y] ++ (filter (\c -> isUpper c) ys)
    headAndCaps [] = []
