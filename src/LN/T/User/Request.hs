{-# LANGUAGE DeriveGeneric #-}

module LN.T.User.Request (
  UserRequest(..),
) where



import           LN.T.Prelude
import           LN.T.User



data UserRequest = UserRequest {
  userRequestDisplayNick :: Text,
  userRequestName        :: Text,
  userRequestEmail       :: Text,
  userRequestPlugin      :: Text,
  userRequestIdent       :: Text,
  userRequestAcceptTOS   :: Maybe UTCTime
} deriving (Eq, Ord, Show, Read, Generic, Typeable)
