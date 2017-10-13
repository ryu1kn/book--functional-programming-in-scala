module IsSortedSpec where

import Test.Hspec
import Lib

spec :: Spec
spec = describe "isSorted" $ do
    it "recognises an array is sorted if the array is empty" $
        isSorted [] (\x y -> False) `shouldBe` True

    it "concludes an array is not sorted if comparator says it is not" $
        isSorted [1, 2, 3] (\x y -> False) `shouldBe` False

    it "concludes an array is sorted if elements are in ascending order" $
        isSorted [1, 2, 3] (<) `shouldBe` True

    it "concludes an array is not sorted if elements are not in ascending order" $
        isSorted [1, 3, 2] (<) `shouldBe` False
