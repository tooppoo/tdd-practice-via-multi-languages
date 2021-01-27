module Bank where

import Money

reduce :: Expression  a => a -> String -> Money
reduce = Money.reduce