{-# LANGUAGE DeriveGeneric #-}

module LN.T.Pack.Team (
  TeamPackResponse (..),
  TeamPackResponses (..),
) where



import           LN.T.Permission
import           LN.T.Prelude
import           LN.T.Team.Response
import           LN.T.Team.Stat
import           LN.T.User.Sanitized.Response



data TeamPackResponse = TeamPackResponse {
--  teamPackResponseOrganization ?
  teamPackResponseUser        :: UserSanitizedResponse,
  teamPackResponseUserId      :: Int64,
  teamPackResponseTeam        :: TeamResponse,
  teamPackResponseTeamId      :: Int64,
  teamPackResponseStat        :: TeamStatResponse,
  teamPackResponsePermissions :: Permissions
} deriving (Eq, Ord, Show, Read, Generic, Typeable)



data TeamPackResponses = TeamPackResponses {
  teamPackResponses :: [TeamPackResponse]
} deriving (Eq, Ord, Show, Read, Generic, Typeable)
