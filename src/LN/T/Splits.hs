{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module LN.T.Splits (
  Splits (..),
  TySplits (..),
  splitAtSpQ
) where



import           LN.T.Prelude



data Splits
  = SplitAt Char Text Text
  | SplitNone
  deriving (Generic, Typeable)



data TySplits
  = TySplitA
  | TySplitNone
  deriving (Generic, Typeable)



-- | splitAtSpQ
--
-- split at the specified string, at a space, followed by ...?
--
splitAtSpQ :: Text -> Splits
splitAtSpQ s = SplitAt ' ' s "...?"
