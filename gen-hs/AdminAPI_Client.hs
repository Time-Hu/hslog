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

module AdminAPI_Client(getNodesConfig,getNodesState,addNodes,updateNodes,removeNodes,markShardsAsProvisioned,bumpNodeGeneration,bootstrapCluster,getMaintenances,applyMaintenance,removeMaintenances,markAllShardsUnrecoverable,checkImpact,getLogTreeInfo,getReplicationInfo,getSettings,applySettingOverride,removeSettingOverride,takeLogTreeSnapshot,takeMaintenanceLogSnapshot,getLogGroupThroughput,getLogGroupCustomCounters,executeAdminCommand,getClusterName,dumpServerConfigJson) where
import qualified FacebookService_Client
import Data.IORef
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

import qualified Fb303_Types as Fb303_Types
import qualified Common_Types as Common_Types
import qualified Admin_commands_Types as Admin_commands_Types
import qualified Cluster_membership_Types as Cluster_membership_Types
import qualified Exceptions_Types as Exceptions_Types
import qualified Logtree_Types as Logtree_Types
import qualified Maintenance_Types as Maintenance_Types
import qualified Nodes_Types as Nodes_Types
import qualified Safety_Types as Safety_Types
import qualified Settings_Types as Settings_Types


import qualified Admin_Types
import qualified AdminAPI
seqid = newIORef 0
getNodesConfig (ip,op) arg_filter = do
  send_getNodesConfig op arg_filter
  recv_getNodesConfig ip
send_getNodesConfig op arg_filter = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getNodesConfig", Types.M_CALL, seqn) $
    AdminAPI.write_GetNodesConfig_args op (AdminAPI.GetNodesConfig_args{AdminAPI.getNodesConfig_args_filter=arg_filter})
  Thrift.tFlush (Thrift.getTransport op)
recv_getNodesConfig ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetNodesConfig_result ip
    maybe (return ()) Exception.throw (AdminAPI.getNodesConfig_result_notready res)
    return $ AdminAPI.getNodesConfig_result_success res
getNodesState (ip,op) arg_request = do
  send_getNodesState op arg_request
  recv_getNodesState ip
send_getNodesState op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getNodesState", Types.M_CALL, seqn) $
    AdminAPI.write_GetNodesState_args op (AdminAPI.GetNodesState_args{AdminAPI.getNodesState_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_getNodesState ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetNodesState_result ip
    maybe (return ()) Exception.throw (AdminAPI.getNodesState_result_notready res)
    return $ AdminAPI.getNodesState_result_success res
addNodes (ip,op) arg_request = do
  send_addNodes op arg_request
  recv_addNodes ip
send_addNodes op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("addNodes", Types.M_CALL, seqn) $
    AdminAPI.write_AddNodes_args op (AdminAPI.AddNodes_args{AdminAPI.addNodes_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_addNodes ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_AddNodes_result ip
    maybe (return ()) Exception.throw (AdminAPI.addNodes_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.addNodes_result_failed_op res)
    maybe (return ()) Exception.throw (AdminAPI.addNodes_result_ncm_error res)
    maybe (return ()) Exception.throw (AdminAPI.addNodes_result_not_supported res)
    return $ AdminAPI.addNodes_result_success res
updateNodes (ip,op) arg_request = do
  send_updateNodes op arg_request
  recv_updateNodes ip
send_updateNodes op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("updateNodes", Types.M_CALL, seqn) $
    AdminAPI.write_UpdateNodes_args op (AdminAPI.UpdateNodes_args{AdminAPI.updateNodes_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_updateNodes ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_UpdateNodes_result ip
    maybe (return ()) Exception.throw (AdminAPI.updateNodes_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.updateNodes_result_failed_op res)
    maybe (return ()) Exception.throw (AdminAPI.updateNodes_result_ncm_error res)
    maybe (return ()) Exception.throw (AdminAPI.updateNodes_result_not_supported res)
    return $ AdminAPI.updateNodes_result_success res
removeNodes (ip,op) arg_request = do
  send_removeNodes op arg_request
  recv_removeNodes ip
send_removeNodes op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("removeNodes", Types.M_CALL, seqn) $
    AdminAPI.write_RemoveNodes_args op (AdminAPI.RemoveNodes_args{AdminAPI.removeNodes_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_removeNodes ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_RemoveNodes_result ip
    maybe (return ()) Exception.throw (AdminAPI.removeNodes_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.removeNodes_result_failed_op res)
    maybe (return ()) Exception.throw (AdminAPI.removeNodes_result_ncm_error res)
    maybe (return ()) Exception.throw (AdminAPI.removeNodes_result_not_supported res)
    return $ AdminAPI.removeNodes_result_success res
markShardsAsProvisioned (ip,op) arg_request = do
  send_markShardsAsProvisioned op arg_request
  recv_markShardsAsProvisioned ip
send_markShardsAsProvisioned op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("markShardsAsProvisioned", Types.M_CALL, seqn) $
    AdminAPI.write_MarkShardsAsProvisioned_args op (AdminAPI.MarkShardsAsProvisioned_args{AdminAPI.markShardsAsProvisioned_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_markShardsAsProvisioned ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_MarkShardsAsProvisioned_result ip
    maybe (return ()) Exception.throw (AdminAPI.markShardsAsProvisioned_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.markShardsAsProvisioned_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.markShardsAsProvisioned_result_ncm_error res)
    maybe (return ()) Exception.throw (AdminAPI.markShardsAsProvisioned_result_not_supported res)
    return $ AdminAPI.markShardsAsProvisioned_result_success res
bumpNodeGeneration (ip,op) arg_request = do
  send_bumpNodeGeneration op arg_request
  recv_bumpNodeGeneration ip
send_bumpNodeGeneration op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("bumpNodeGeneration", Types.M_CALL, seqn) $
    AdminAPI.write_BumpNodeGeneration_args op (AdminAPI.BumpNodeGeneration_args{AdminAPI.bumpNodeGeneration_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_bumpNodeGeneration ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_BumpNodeGeneration_result ip
    maybe (return ()) Exception.throw (AdminAPI.bumpNodeGeneration_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.bumpNodeGeneration_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.bumpNodeGeneration_result_ncm_error res)
    maybe (return ()) Exception.throw (AdminAPI.bumpNodeGeneration_result_not_supported res)
    return $ AdminAPI.bumpNodeGeneration_result_success res
bootstrapCluster (ip,op) arg_request = do
  send_bootstrapCluster op arg_request
  recv_bootstrapCluster ip
send_bootstrapCluster op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("bootstrapCluster", Types.M_CALL, seqn) $
    AdminAPI.write_BootstrapCluster_args op (AdminAPI.BootstrapCluster_args{AdminAPI.bootstrapCluster_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_bootstrapCluster ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_BootstrapCluster_result ip
    maybe (return ()) Exception.throw (AdminAPI.bootstrapCluster_result_error res)
    maybe (return ()) Exception.throw (AdminAPI.bootstrapCluster_result_ncm_error res)
    return $ AdminAPI.bootstrapCluster_result_success res
getMaintenances (ip,op) arg_filter = do
  send_getMaintenances op arg_filter
  recv_getMaintenances ip
send_getMaintenances op arg_filter = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getMaintenances", Types.M_CALL, seqn) $
    AdminAPI.write_GetMaintenances_args op (AdminAPI.GetMaintenances_args{AdminAPI.getMaintenances_args_filter=arg_filter})
  Thrift.tFlush (Thrift.getTransport op)
recv_getMaintenances ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetMaintenances_result ip
    maybe (return ()) Exception.throw (AdminAPI.getMaintenances_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.getMaintenances_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.getMaintenances_result_error res)
    maybe (return ()) Exception.throw (AdminAPI.getMaintenances_result_not_supported res)
    return $ AdminAPI.getMaintenances_result_success res
applyMaintenance (ip,op) arg_request = do
  send_applyMaintenance op arg_request
  recv_applyMaintenance ip
send_applyMaintenance op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("applyMaintenance", Types.M_CALL, seqn) $
    AdminAPI.write_ApplyMaintenance_args op (AdminAPI.ApplyMaintenance_args{AdminAPI.applyMaintenance_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_applyMaintenance ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_ApplyMaintenance_result ip
    maybe (return ()) Exception.throw (AdminAPI.applyMaintenance_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.applyMaintenance_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.applyMaintenance_result_clash res)
    maybe (return ()) Exception.throw (AdminAPI.applyMaintenance_result_operation_error res)
    maybe (return ()) Exception.throw (AdminAPI.applyMaintenance_result_not_supported res)
    return $ AdminAPI.applyMaintenance_result_success res
removeMaintenances (ip,op) arg_filter = do
  send_removeMaintenances op arg_filter
  recv_removeMaintenances ip
send_removeMaintenances op arg_filter = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("removeMaintenances", Types.M_CALL, seqn) $
    AdminAPI.write_RemoveMaintenances_args op (AdminAPI.RemoveMaintenances_args{AdminAPI.removeMaintenances_args_filter=arg_filter})
  Thrift.tFlush (Thrift.getTransport op)
recv_removeMaintenances ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_RemoveMaintenances_result ip
    maybe (return ()) Exception.throw (AdminAPI.removeMaintenances_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.removeMaintenances_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.removeMaintenances_result_operation_error res)
    maybe (return ()) Exception.throw (AdminAPI.removeMaintenances_result_not_supported res)
    maybe (return ()) Exception.throw (AdminAPI.removeMaintenances_result_not_found res)
    return $ AdminAPI.removeMaintenances_result_success res
markAllShardsUnrecoverable (ip,op) arg_request = do
  send_markAllShardsUnrecoverable op arg_request
  recv_markAllShardsUnrecoverable ip
send_markAllShardsUnrecoverable op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("markAllShardsUnrecoverable", Types.M_CALL, seqn) $
    AdminAPI.write_MarkAllShardsUnrecoverable_args op (AdminAPI.MarkAllShardsUnrecoverable_args{AdminAPI.markAllShardsUnrecoverable_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_markAllShardsUnrecoverable ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_MarkAllShardsUnrecoverable_result ip
    maybe (return ()) Exception.throw (AdminAPI.markAllShardsUnrecoverable_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.markAllShardsUnrecoverable_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.markAllShardsUnrecoverable_result_operation_error res)
    maybe (return ()) Exception.throw (AdminAPI.markAllShardsUnrecoverable_result_not_supported res)
    return $ AdminAPI.markAllShardsUnrecoverable_result_success res
checkImpact (ip,op) arg_request = do
  send_checkImpact op arg_request
  recv_checkImpact ip
send_checkImpact op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("checkImpact", Types.M_CALL, seqn) $
    AdminAPI.write_CheckImpact_args op (AdminAPI.CheckImpact_args{AdminAPI.checkImpact_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_checkImpact ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_CheckImpact_result ip
    maybe (return ()) Exception.throw (AdminAPI.checkImpact_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.checkImpact_result_error res)
    maybe (return ()) Exception.throw (AdminAPI.checkImpact_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.checkImpact_result_notsupported res)
    return $ AdminAPI.checkImpact_result_success res
getLogTreeInfo (ip,op) = do
  send_getLogTreeInfo op
  recv_getLogTreeInfo ip
send_getLogTreeInfo op = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getLogTreeInfo", Types.M_CALL, seqn) $
    AdminAPI.write_GetLogTreeInfo_args op (AdminAPI.GetLogTreeInfo_args{})
  Thrift.tFlush (Thrift.getTransport op)
recv_getLogTreeInfo ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetLogTreeInfo_result ip
    return $ AdminAPI.getLogTreeInfo_result_success res
getReplicationInfo (ip,op) = do
  send_getReplicationInfo op
  recv_getReplicationInfo ip
send_getReplicationInfo op = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getReplicationInfo", Types.M_CALL, seqn) $
    AdminAPI.write_GetReplicationInfo_args op (AdminAPI.GetReplicationInfo_args{})
  Thrift.tFlush (Thrift.getTransport op)
recv_getReplicationInfo ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetReplicationInfo_result ip
    return $ AdminAPI.getReplicationInfo_result_success res
getSettings (ip,op) arg_request = do
  send_getSettings op arg_request
  recv_getSettings ip
send_getSettings op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getSettings", Types.M_CALL, seqn) $
    AdminAPI.write_GetSettings_args op (AdminAPI.GetSettings_args{AdminAPI.getSettings_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_getSettings ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetSettings_result ip
    return $ AdminAPI.getSettings_result_success res
applySettingOverride (ip,op) arg_request = do
  send_applySettingOverride op arg_request
  recv_applySettingOverride ip
send_applySettingOverride op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("applySettingOverride", Types.M_CALL, seqn) $
    AdminAPI.write_ApplySettingOverride_args op (AdminAPI.ApplySettingOverride_args{AdminAPI.applySettingOverride_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_applySettingOverride ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_ApplySettingOverride_result ip
    maybe (return ()) Exception.throw (AdminAPI.applySettingOverride_result_invalid_request res)
    maybe (return ()) Exception.throw (AdminAPI.applySettingOverride_result_operation_error res)
    return ()
removeSettingOverride (ip,op) arg_request = do
  send_removeSettingOverride op arg_request
  recv_removeSettingOverride ip
send_removeSettingOverride op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("removeSettingOverride", Types.M_CALL, seqn) $
    AdminAPI.write_RemoveSettingOverride_args op (AdminAPI.RemoveSettingOverride_args{AdminAPI.removeSettingOverride_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_removeSettingOverride ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_RemoveSettingOverride_result ip
    return ()
takeLogTreeSnapshot (ip,op) arg_min_version = do
  send_takeLogTreeSnapshot op arg_min_version
  recv_takeLogTreeSnapshot ip
send_takeLogTreeSnapshot op arg_min_version = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("takeLogTreeSnapshot", Types.M_CALL, seqn) $
    AdminAPI.write_TakeLogTreeSnapshot_args op (AdminAPI.TakeLogTreeSnapshot_args{AdminAPI.takeLogTreeSnapshot_args_min_version=arg_min_version})
  Thrift.tFlush (Thrift.getTransport op)
recv_takeLogTreeSnapshot ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_TakeLogTreeSnapshot_result ip
    maybe (return ()) Exception.throw (AdminAPI.takeLogTreeSnapshot_result_stale res)
    maybe (return ()) Exception.throw (AdminAPI.takeLogTreeSnapshot_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.takeLogTreeSnapshot_result_notsupported res)
    return ()
takeMaintenanceLogSnapshot (ip,op) arg_min_version = do
  send_takeMaintenanceLogSnapshot op arg_min_version
  recv_takeMaintenanceLogSnapshot ip
send_takeMaintenanceLogSnapshot op arg_min_version = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("takeMaintenanceLogSnapshot", Types.M_CALL, seqn) $
    AdminAPI.write_TakeMaintenanceLogSnapshot_args op (AdminAPI.TakeMaintenanceLogSnapshot_args{AdminAPI.takeMaintenanceLogSnapshot_args_min_version=arg_min_version})
  Thrift.tFlush (Thrift.getTransport op)
recv_takeMaintenanceLogSnapshot ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_TakeMaintenanceLogSnapshot_result ip
    maybe (return ()) Exception.throw (AdminAPI.takeMaintenanceLogSnapshot_result_stale res)
    maybe (return ()) Exception.throw (AdminAPI.takeMaintenanceLogSnapshot_result_notready res)
    maybe (return ()) Exception.throw (AdminAPI.takeMaintenanceLogSnapshot_result_notsupported res)
    return ()
getLogGroupThroughput (ip,op) arg_request = do
  send_getLogGroupThroughput op arg_request
  recv_getLogGroupThroughput ip
send_getLogGroupThroughput op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getLogGroupThroughput", Types.M_CALL, seqn) $
    AdminAPI.write_GetLogGroupThroughput_args op (AdminAPI.GetLogGroupThroughput_args{AdminAPI.getLogGroupThroughput_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_getLogGroupThroughput ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetLogGroupThroughput_result ip
    return $ AdminAPI.getLogGroupThroughput_result_success res
getLogGroupCustomCounters (ip,op) arg_request = do
  send_getLogGroupCustomCounters op arg_request
  recv_getLogGroupCustomCounters ip
send_getLogGroupCustomCounters op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getLogGroupCustomCounters", Types.M_CALL, seqn) $
    AdminAPI.write_GetLogGroupCustomCounters_args op (AdminAPI.GetLogGroupCustomCounters_args{AdminAPI.getLogGroupCustomCounters_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_getLogGroupCustomCounters ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetLogGroupCustomCounters_result ip
    maybe (return ()) Exception.throw (AdminAPI.getLogGroupCustomCounters_result_notsupported res)
    maybe (return ()) Exception.throw (AdminAPI.getLogGroupCustomCounters_result_invalid_request res)
    return $ AdminAPI.getLogGroupCustomCounters_result_success res
executeAdminCommand (ip,op) arg_request = do
  send_executeAdminCommand op arg_request
  recv_executeAdminCommand ip
send_executeAdminCommand op arg_request = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("executeAdminCommand", Types.M_CALL, seqn) $
    AdminAPI.write_ExecuteAdminCommand_args op (AdminAPI.ExecuteAdminCommand_args{AdminAPI.executeAdminCommand_args_request=arg_request})
  Thrift.tFlush (Thrift.getTransport op)
recv_executeAdminCommand ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_ExecuteAdminCommand_result ip
    maybe (return ()) Exception.throw (AdminAPI.executeAdminCommand_result_notsupported res)
    return $ AdminAPI.executeAdminCommand_result_success res
getClusterName (ip,op) = do
  send_getClusterName op
  recv_getClusterName ip
send_getClusterName op = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("getClusterName", Types.M_CALL, seqn) $
    AdminAPI.write_GetClusterName_args op (AdminAPI.GetClusterName_args{})
  Thrift.tFlush (Thrift.getTransport op)
recv_getClusterName ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_GetClusterName_result ip
    return $ AdminAPI.getClusterName_result_success res
dumpServerConfigJson (ip,op) = do
  send_dumpServerConfigJson op
  recv_dumpServerConfigJson ip
send_dumpServerConfigJson op = do
  seq <- seqid
  seqn <- readIORef seq
  Thrift.writeMessage op ("dumpServerConfigJson", Types.M_CALL, seqn) $
    AdminAPI.write_DumpServerConfigJson_args op (AdminAPI.DumpServerConfigJson_args{})
  Thrift.tFlush (Thrift.getTransport op)
recv_dumpServerConfigJson ip =
  Thrift.readMessage ip $ \(fname,mtype,rseqid) -> do
    Monad.when (mtype == Types.M_EXCEPTION) $ Thrift.readAppExn ip >>= Exception.throw
    res <- AdminAPI.read_DumpServerConfigJson_result ip
    return $ AdminAPI.dumpServerConfigJson_result_success res