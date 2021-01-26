module MoneySpec where

import Prelude hiding ((*))

import Test.Hspec
import Test.QuickCheck

import Money

spec :: Spec
spec = do
  describe "$5 * 2" $ do
    it "return $10" $ do
      let five = (dollar 5)

      (five * 2) `shouldBe` (dollar 10)
  describe "5CHF * 2" $ do
    it "return 10CHF" $ do
      let five = (franc 5)

      (five * 2) `shouldBe` (franc 10)
  describe "$5 == 5CHF" $ do
    it "return false" $ do
      let d = dollar 5
          f = franc 5

      (d == f) `shouldBe` False
