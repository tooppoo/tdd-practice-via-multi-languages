module MoneySpec where

import Prelude hiding ((*))

import Test.Hspec
import Test.QuickCheck

import Money

spec :: Spec
spec = do
  describe "$5 * 2" $ do
    it "return $10" $ do
      let five = (Dollar 5)

      (five * 2) `shouldBe` (Dollar 10)
  describe "5CHF * 2" $ do
    it "return 10CHF" $ do
      let five = (Franc 5)

      (five * 2) `shouldBe` (Franc 10)
  describe "$5 == 5CHF" $ do
    it "return false" $ do
      let dollar = Dollar 5
          franc = Franc 5

      (dollar == franc) `shouldBe` False
