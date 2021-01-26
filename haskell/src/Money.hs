module Money where

class Times a where
  (*) :: a -> Int -> a

data Money = Dollar Int | Franc Int deriving (Eq, Show)

instance Times Money where
  (Dollar a) * m = Dollar (a Prelude.* m)
  (Franc a) * m = Franc (a Prelude.* m)

dollar :: Int -> Money
dollar = Dollar

franc :: Int -> Money
franc = Franc