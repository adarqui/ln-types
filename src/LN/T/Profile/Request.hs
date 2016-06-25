{-# LANGUAGE DeriveGeneric #-}

module LN.T.Profile.Request (
  ProfileRequest (..),
  defaultProfileRequest,
) where



import           LN.T.Prelude
import           LN.T.Time
import           LN.T.Profile




data ProfileRequest = ProfileRequest {
  profileRequestGender    :: ProfileGender,
  profileRequestBirthdate :: UTCTime,
  profileRequestWebsite   :: Maybe Text,
  profileRequestLocation  :: Maybe Text,
  profileRequestSignature :: Maybe Text,
  profileRequestDebug     :: Bool,
  profileRequestGuard     :: Int
} deriving (Eq, Ord, Show, Read, Generic, Typeable)



defaultProfileRequest :: ProfileRequest
defaultProfileRequest = ProfileRequest {
  profileRequestGender = defaultProfileGender,
  profileRequestBirthdate = defaultUTCTime,
  profileRequestWebsite   = Nothing,
  profileRequestLocation  = Nothing,
  profileRequestSignature = Nothing,
  profileRequestDebug     = False,
  profileRequestGuard     = 0
}
