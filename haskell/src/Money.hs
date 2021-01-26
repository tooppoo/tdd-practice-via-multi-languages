module Money where

class Times a where
  (*) :: a -> Int -> a

data Money =
  Money { amount :: Int, currency :: String } |
  Dollar { amount :: Int, currency :: String } |
  Franc  { amount :: Int, currency :: String }
  deriving (Eq, Show)

instance Times Money where
  (Dollar a c) * m = Dollar (a Prelude.* m) c
  (Franc a c) * m = Franc (a Prelude.* m) c
  (Money a c) * m = Money (a Prelude.* m) c

money :: Int -> String -> Money
money = Money

dollar :: Int -> Money
dollar m = Money m "USD"

franc :: Int -> Money
franc m = Money m "CHF"
