module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =
    isDiv 4 year && (isDiv 400 year || (not $ isDiv 100 year))
    where
        isDiv a b = b `mod` a == 0
