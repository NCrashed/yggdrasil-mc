module Minecraft.Yggdrasil.API.Aeson where

import Data.Aeson as A
import Data.Char

unwrapUnaryOptions :: Options
unwrapUnaryOptions = A.defaultOptions { unwrapUnaryRecords = True }

untaggedToLowerSumOptions :: Options
untaggedToLowerSumOptions = A.defaultOptions
   { sumEncoding = UntaggedValue
   , constructorTagModifier = fmap toLower
   }

dropPrefixToApostrophOptions :: Options
dropPrefixToApostrophOptions =
  A.defaultOptions
    { fieldLabelModifier = stripFieldToApostroph
    , omitNothingFields  = True
    }

stripFieldToApostroph :: String -> String
stripFieldToApostroph = reverse . takeWhile (/='\'') . reverse
