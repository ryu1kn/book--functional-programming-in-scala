module FibonacciSpec where

import Test.Hspec
import Lib

spec :: Spec
spec = describe "fib" $ do
    it "calculates the 1st fibonacci number (starting with 0)" $
        fib 0 `shouldBe` 0

    it "calculates the 2nd fibonacci number" $
        fib 1 `shouldBe` 1

    it "calculates the 3rd fibonacci number" $
        fib 2 `shouldBe` 1

    it "calculates the 4th fibonacci number" $
        fib 3 `shouldBe` 2

    it "calculates the 5th fibonacci number" $
        fib 4 `shouldBe` 3

    it "calculates the 6th fibonacci number" $
        fib 5 `shouldBe` 5

    it "calculates the 7th fibonacci number" $
        fib 6 `shouldBe` 8
