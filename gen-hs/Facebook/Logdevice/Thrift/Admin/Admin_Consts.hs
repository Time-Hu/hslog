{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------

module HStream.Store.Thrift.Admin.Admin_Consts where
import Prelude ( Bool(..), Enum, Float, IO, Double, String, Maybe(..),
                 Eq, Show, Ord,
                 concat, error, fromIntegral, fromEnum, length, map,
                 maybe, not, null, otherwise, return, show, toEnum,
                 enumFromTo, Bounded, minBound, maxBound, seq, succ,
                 pred, enumFrom, enumFromThen, enumFromThenTo,
                 (.), (&&), (||), (==), (++), ($), (-), (>>=), (>>))

import qualified Control.Applicative as Applicative (ZipList(..))
import Control.Applicative ( (<*>) )
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad ( liftM, ap, when )
import qualified Data.ByteString.Lazy as BS
import Data.Functor ( (<$>) )
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import Data.List
import qualified Data.Maybe as Maybe (catMaybes)
import qualified Data.Text.Lazy.Encoding as Encoding ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified Data.Typeable as Typeable ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as Arbitrary ( Arbitrary(..) )
import qualified Test.QuickCheck as QuickCheck ( elements )

import qualified Thrift
import qualified Thrift.Types as Types
import qualified Thrift.Serializable as Serializable
import qualified Thrift.Arbitraries as Arbitraries

import qualified Facebook.FB303.Fb303_Types as Fb303_Types
import qualified HStream.Store.Thrift.Common.Common_Types as Common_Types
import qualified HStream.Store.Thrift.AdminCommand.Admin_commands_Types as Admin_commands_Types
import qualified HStream.Store.Thrift.ClusterMembership.Cluster_membership_Types as Cluster_membership_Types
import qualified HStream.Store.Thrift.Exceptions.Exceptions_Types as Exceptions_Types
import qualified HStream.Store.Thrift.LogTree.Logtree_Types as Logtree_Types
import qualified HStream.Store.Thrift.Maintenance.Maintenance_Types as Maintenance_Types
import qualified HStream.Store.Thrift.Nodes.Nodes_Types as Nodes_Types
import qualified HStream.Store.Thrift.Safety.Safety_Types as Safety_Types
import qualified HStream.Store.Thrift.Settings.Settings_Types as Settings_Types


import qualified HStream.Store.Thrift.Admin.Admin_Types
