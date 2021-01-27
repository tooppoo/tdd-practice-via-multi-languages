module Bank where

import Money

reduce :: Reducer a => a -> String -> Money
reduce = Money.reduce