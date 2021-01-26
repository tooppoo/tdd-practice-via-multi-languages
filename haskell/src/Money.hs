module Money where

data Expression =
  Sum { augend :: Money, addend :: Money }

class Times a where
  (*) :: a -> Int -> a
class Add a where
  (+) :: a -> a -> Expression

data Money =
  Money { amount :: Int, currency :: String }
  deriving (Eq, Show)

instance Times Money where
  (Money a c) * m = Money (a Prelude.* m) c
instance Add Money where
  a + b = Sum a b

money :: Int -> String -> Money
money = Money

dollar :: Int -> Money
dollar m = Money m "USD"

franc :: Int -> Money
franc m = Money m "CHF"
