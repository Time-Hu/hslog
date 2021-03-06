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

module Facebook.Logdevice.Thrift.Admin.AdminAPI_Iface where
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
import qualified Facebook.Logdevice.Thrift.Common.Common_Types as Common_Types
import qualified Facebook.Logdevice.Thrift.AdminCommand.Admin_commands_Types as Admin_commands_Types
import qualified Facebook.Logdevice.Thrift.ClusterMembership.Cluster_membership_Types as Cluster_membership_Types
import qualified Facebook.Logdevice.Thrift.Exceptions.Exceptions_Types as Exceptions_Types
import qualified Facebook.Logdevice.Thrift.LogTree.Logtree_Types as Logtree_Types
import qualified Facebook.Logdevice.Thrift.Maintenance.Maintenance_Types as Maintenance_Types
import qualified Facebook.Logdevice.Thrift.Nodes.Nodes_Types as Nodes_Types
import qualified Facebook.Logdevice.Thrift.Safety.Safety_Types as Safety_Types
import qualified Facebook.Logdevice.Thrift.Settings.Settings_Types as Settings_Types


import qualified Facebook.Logdevice.Thrift.Admin.Admin_Types

import qualified Facebook.FB303.FacebookService_Iface
class FacebookService_Iface.FacebookService_Iface a => AdminAPI_Iface a where
  getNodesConfig :: a -> Nodes_Types.NodesFilter -> IO Nodes_Types.NodesConfigResponse
  getNodesState :: a -> Nodes_Types.NodesStateRequest -> IO Nodes_Types.NodesStateResponse
  addNodes :: a -> Cluster_membership_Types.AddNodesRequest -> IO Cluster_membership_Types.AddNodesResponse
  updateNodes :: a -> Cluster_membership_Types.UpdateNodesRequest -> IO Cluster_membership_Types.UpdateNodesResponse
  removeNodes :: a -> Cluster_membership_Types.RemoveNodesRequest -> IO Cluster_membership_Types.RemoveNodesResponse
  markShardsAsProvisioned :: a -> Cluster_membership_Types.MarkShardsAsProvisionedRequest -> IO Cluster_membership_Types.MarkShardsAsProvisionedResponse
  bumpNodeGeneration :: a -> Cluster_membership_Types.BumpGenerationRequest -> IO Cluster_membership_Types.BumpGenerationResponse
  bootstrapCluster :: a -> Cluster_membership_Types.BootstrapClusterRequest -> IO Cluster_membership_Types.BootstrapClusterResponse
  getMaintenances :: a -> Maintenance_Types.MaintenancesFilter -> IO Maintenance_Types.MaintenanceDefinitionResponse
  applyMaintenance :: a -> Maintenance_Types.MaintenanceDefinition -> IO Maintenance_Types.MaintenanceDefinitionResponse
  removeMaintenances :: a -> Maintenance_Types.RemoveMaintenancesRequest -> IO Maintenance_Types.RemoveMaintenancesResponse
  markAllShardsUnrecoverable :: a -> Maintenance_Types.MarkAllShardsUnrecoverableRequest -> IO Maintenance_Types.MarkAllShardsUnrecoverableResponse
  checkImpact :: a -> Safety_Types.CheckImpactRequest -> IO Safety_Types.CheckImpactResponse
  getLogTreeInfo :: a -> IO Logtree_Types.LogTreeInfo
  getReplicationInfo :: a -> IO Logtree_Types.ReplicationInfo
  getSettings :: a -> Settings_Types.SettingsRequest -> IO Settings_Types.SettingsResponse
  applySettingOverride :: a -> Settings_Types.ApplySettingOverrideRequest -> IO ()
  removeSettingOverride :: a -> Settings_Types.RemoveSettingOverrideRequest -> IO ()
  takeLogTreeSnapshot :: a -> Int.Int64 -> IO ()
  takeMaintenanceLogSnapshot :: a -> Int.Int64 -> IO ()
  getLogGroupThroughput :: a -> Logtree_Types.LogGroupThroughputRequest -> IO Logtree_Types.LogGroupThroughputResponse
  getLogGroupCustomCounters :: a -> Logtree_Types.LogGroupCustomCountersRequest -> IO Logtree_Types.LogGroupCustomCountersResponse
  executeAdminCommand :: a -> Admin_commands_Types.AdminCommandRequest -> IO Admin_commands_Types.AdminCommandResponse
  getClusterName :: a -> IO LT.Text
  dumpServerConfigJson :: a -> IO LT.Text
