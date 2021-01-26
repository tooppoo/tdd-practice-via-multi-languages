module Money where

class Times a where
  (*) :: a -> Int -> a

data Money =
  Dollar { amount :: Int, currency :: String } |
  Franc  { amount :: Int, currency :: String }
  deriving (Eq, Show)

instance Times Money where
  (Dollar a c) * m = Dollar (a Prelude.* m) c
  (Franc a c) * m = Franc (a Prelude.* m) c

dollar :: Int -> Money
dollar m = Dollar m "USD"

franc :: Int -> Money
franc m = Franc m "CHF"