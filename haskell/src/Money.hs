module Money where

class Times a where
  (*) :: a -> Int -> a
class Add a where
  (+) :: a -> a -> a

data Money =
  Money { amount :: Int, currency :: String }
  deriving (Eq, Show)

instance Times Money where
  (Money a c) * m = Money (a Prelude.* m) c
instance Add Money where
  (Money a1 c1) + (Money a2 _) = Money (a1 Prelude.+ a1) c1

money :: Int -> String -> Money
money = Money

dollar :: Int -> Money
dollar m = Money m "USD"

franc :: Int -> Money
franc m = Money m "CHF"
