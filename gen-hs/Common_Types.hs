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

module Common_Types where
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


data SocketAddressFamily = INET|UNIX  deriving (Show,Eq, Typeable.Typeable, Ord, Bounded)
instance Enum SocketAddressFamily where
  fromEnum t = case t of
    INET -> 1
    UNIX -> 2
  toEnum t = case t of
    1 -> INET
    2 -> UNIX
    _ -> Exception.throw Thrift.ThriftException
  succ t = case t of
    INET -> UNIX
    UNIX -> Exception.throw Thrift.ThriftException
  pred t = case t of
    INET -> Exception.throw Thrift.ThriftException
    UNIX -> INET
  enumFrom x = enumFromTo x maxBound
  enumFromTo x y = takeUpToInc y $ iterate succ x
    where
    takeUpToInc _ [] = []
    takeUpToInc m (x:_) | m == x = [x]
    takeUpToInc m (x:xs) | otherwise = x : takeUpToInc m xs
  enumFromThen _ _ = Exception.throw Thrift.ThriftException
  enumFromThenTo _ _ _ = Exception.throw Thrift.ThriftException
instance Hashable.Hashable SocketAddressFamily where
  hashWithSalt salt = Hashable.hashWithSalt salt . fromEnum
instance DeepSeq.NFData SocketAddressFamily where
  rnf x = x `seq` ()
instance Arbitrary.Arbitrary SocketAddressFamily where
  arbitrary = QuickCheck.elements (enumFromTo minBound maxBound)
data ClientNetworkPriority = LOW|MEDIUM|HIGH  deriving (Show,Eq, Typeable.Typeable, Ord, Bounded)
instance Enum ClientNetworkPriority where
  fromEnum t = case t of
    LOW -> 0
    MEDIUM -> 1
    HIGH -> 2
  toEnum t = case t of
    0 -> LOW
    1 -> MEDIUM
    2 -> HIGH
    _ -> Exception.throw Thrift.ThriftException
  succ t = case t of
    LOW -> MEDIUM
    MEDIUM -> HIGH
    HIGH -> Exception.throw Thrift.ThriftException
  pred t = case t of
    LOW -> Exception.throw Thrift.ThriftException
    MEDIUM -> LOW
    HIGH -> MEDIUM
  enumFrom x = enumFromTo x maxBound
  enumFromTo x y = takeUpToInc y $ iterate succ x
    where
    takeUpToInc _ [] = []
    takeUpToInc m (x:_) | m == x = [x]
    takeUpToInc m (x:xs) | otherwise = x : takeUpToInc m xs
  enumFromThen _ _ = Exception.throw Thrift.ThriftException
  enumFromThenTo _ _ _ = Exception.throw Thrift.ThriftException
instance Hashable.Hashable ClientNetworkPriority where
  hashWithSalt salt = Hashable.hashWithSalt salt . fromEnum
instance DeepSeq.NFData ClientNetworkPriority where
  rnf x = x `seq` ()
instance Arbitrary.Arbitrary ClientNetworkPriority where
  arbitrary = QuickCheck.elements (enumFromTo minBound maxBound)
data Role = STORAGE|SEQUENCER  deriving (Show,Eq, Typeable.Typeable, Ord, Bounded)
instance Enum Role where
  fromEnum t = case t of
    STORAGE -> 1
    SEQUENCER -> 2
  toEnum t = case t of
    1 -> STORAGE
    2 -> SEQUENCER
    _ -> Exception.throw Thrift.ThriftException
  succ t = case t of
    STORAGE -> SEQUENCER
    SEQUENCER -> Exception.throw Thrift.ThriftException
  pred t = case t of
    STORAGE -> Exception.throw Thrift.ThriftException
    SEQUENCER -> STORAGE
  enumFrom x = enumFromTo x maxBound
  enumFromTo x y = takeUpToInc y $ iterate succ x
    where
    takeUpToInc _ [] = []
    takeUpToInc m (x:_) | m == x = [x]
    takeUpToInc m (x:xs) | otherwise = x : takeUpToInc m xs
  enumFromThen _ _ = Exception.throw Thrift.ThriftException
  enumFromThenTo _ _ _ = Exception.throw Thrift.ThriftException
instance Hashable.Hashable Role where
  hashWithSalt salt = Hashable.hashWithSalt salt . fromEnum
instance DeepSeq.NFData Role where
  rnf x = x `seq` ()
instance Arbitrary.Arbitrary Role where
  arbitrary = QuickCheck.elements (enumFromTo minBound maxBound)
data LocationScope = NODE|RACK|ROW|CLUSTER|DATA_CENTER|REGION|ROOT  deriving (Show,Eq, Typeable.Typeable, Ord, Bounded)
instance Enum LocationScope where
  fromEnum t = case t of
    NODE -> 1
    RACK -> 2
    ROW -> 3
    CLUSTER -> 4
    DATA_CENTER -> 5
    REGION -> 6
    ROOT -> 99
  toEnum t = case t of
    1 -> NODE
    2 -> RACK
    3 -> ROW
    4 -> CLUSTER
    5 -> DATA_CENTER
    6 -> REGION
    99 -> ROOT
    _ -> Exception.throw Thrift.ThriftException
  succ t = case t of
    NODE -> RACK
    RACK -> ROW
    ROW -> CLUSTER
    CLUSTER -> DATA_CENTER
    DATA_CENTER -> REGION
    REGION -> ROOT
    ROOT -> Exception.throw Thrift.ThriftException
  pred t = case t of
    NODE -> Exception.throw Thrift.ThriftException
    RACK -> NODE
    ROW -> RACK
    CLUSTER -> ROW
    DATA_CENTER -> CLUSTER
    REGION -> DATA_CENTER
    ROOT -> REGION
  enumFrom x = enumFromTo x maxBound
  enumFromTo x y = takeUpToInc y $ iterate succ x
    where
    takeUpToInc _ [] = []
    takeUpToInc m (x:_) | m == x = [x]
    takeUpToInc m (x:xs) | otherwise = x : takeUpToInc m xs
  enumFromThen _ _ = Exception.throw Thrift.ThriftException
  enumFromThenTo _ _ _ = Exception.throw Thrift.ThriftException
instance Hashable.Hashable LocationScope where
  hashWithSalt salt = Hashable.hashWithSalt salt . fromEnum
instance DeepSeq.NFData LocationScope where
  rnf x = x `seq` ()
instance Arbitrary.Arbitrary LocationScope where
  arbitrary = QuickCheck.elements (enumFromTo minBound maxBound)
type Unsigned64 = Int.Int64

type MaintenanceGroupID = LT.Text

type Timestamp = Int.Int64

type NodeIndex = Int.Int16

type ShardIndex = Int.Int16

type StorageSet = Vector.Vector Common_Types.ShardID

type ShardSet = Vector.Vector Common_Types.ShardID

type ReplicationProperty = Map.HashMap Common_Types.LocationScope Int.Int32

type Location = Map.HashMap Common_Types.LocationScope LT.Text

-- | Definition of the SocketAddress struct
data SocketAddress = SocketAddress
  { socketAddress_address_family :: Common_Types.SocketAddressFamily
    -- ^ address_family field of the SocketAddress struct
  , socketAddress_address :: Maybe LT.Text
    -- ^ address field of the SocketAddress struct
  , socketAddress_port :: Maybe Int.Int32
    -- ^ port field of the SocketAddress struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable SocketAddress where
  encode = encode_SocketAddress
  decode = decode_SocketAddress
instance Hashable.Hashable SocketAddress where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` socketAddress_address_family record   `Hashable.hashWithSalt` socketAddress_address record   `Hashable.hashWithSalt` socketAddress_port record  
instance DeepSeq.NFData SocketAddress where
  rnf _record0 =
    DeepSeq.rnf (socketAddress_address_family _record0) `seq`
    DeepSeq.rnf (socketAddress_address _record0) `seq`
    DeepSeq.rnf (socketAddress_port _record0) `seq`
    ()
instance Arbitrary.Arbitrary SocketAddress where 
  arbitrary = Monad.liftM SocketAddress (Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
  shrink obj | obj == default_SocketAddress = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_SocketAddress{socketAddress_address_family = socketAddress_address_family obj} then Nothing else Just $ default_SocketAddress{socketAddress_address_family = socketAddress_address_family obj}
    , if obj == default_SocketAddress{socketAddress_address = socketAddress_address obj} then Nothing else Just $ default_SocketAddress{socketAddress_address = socketAddress_address obj}
    , if obj == default_SocketAddress{socketAddress_port = socketAddress_port obj} then Nothing else Just $ default_SocketAddress{socketAddress_port = socketAddress_port obj}
    ]
-- | Translate a 'SocketAddress' to a 'Types.ThriftVal'
from_SocketAddress :: SocketAddress -> Types.ThriftVal
from_SocketAddress record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("address_family",Types.TI32 $ fromIntegral $ fromEnum _v3))) $ socketAddress_address_family record
  , (\_v3 -> (2, ("address",Types.TString $ Encoding.encodeUtf8 _v3))) <$> socketAddress_address record
  , (\_v3 -> (3, ("port",Types.TI32 _v3))) <$> socketAddress_port record
  ]
-- | Write a 'SocketAddress' with the given 'Thrift.Protocol'
write_SocketAddress :: (Thrift.Protocol p, Thrift.Transport t) => p t -> SocketAddress -> IO ()
write_SocketAddress oprot record = Thrift.writeVal oprot $ from_SocketAddress record
-- | Serialize a 'SocketAddress' in pure code
encode_SocketAddress :: (Thrift.Protocol p, Thrift.Transport t) => p t -> SocketAddress -> BS.ByteString
encode_SocketAddress oprot record = Thrift.serializeVal oprot $ from_SocketAddress record
-- | Translate a 'Types.ThriftVal' to a 'SocketAddress'
to_SocketAddress :: Types.ThriftVal -> SocketAddress
to_SocketAddress (Types.TStruct fields) = SocketAddress{
  socketAddress_address_family = maybe (socketAddress_address_family default_SocketAddress) (\(_,_val5) -> (case _val5 of {Types.TI32 _val6 -> toEnum $ fromIntegral _val6; _ -> error "wrong type"})) (Map.lookup (1) fields),
  socketAddress_address = maybe (Nothing) (\(_,_val5) -> Just (case _val5 of {Types.TString _val7 -> Encoding.decodeUtf8 _val7; _ -> error "wrong type"})) (Map.lookup (2) fields),
  socketAddress_port = maybe (socketAddress_port default_SocketAddress) (\(_,_val5) -> Just (case _val5 of {Types.TI32 _val8 -> _val8; _ -> error "wrong type"})) (Map.lookup (3) fields)
  }
to_SocketAddress _ = error "not a struct"
-- | Read a 'SocketAddress' struct with the given 'Thrift.Protocol'
read_SocketAddress :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO SocketAddress
read_SocketAddress iprot = to_SocketAddress <$> Thrift.readVal iprot (Types.T_STRUCT typemap_SocketAddress)
-- | Deserialize a 'SocketAddress' in pure code
decode_SocketAddress :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> SocketAddress
decode_SocketAddress iprot bs = to_SocketAddress $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_SocketAddress) bs
-- | 'TypeMap' for the 'SocketAddress' struct
typemap_SocketAddress :: Types.TypeMap
typemap_SocketAddress = Map.fromList [("address_family",(1,Types.T_I32)),("address",(2,Types.T_STRING)),("port",(3,Types.T_I32))]
-- | Default values for the 'SocketAddress' struct
default_SocketAddress :: SocketAddress
default_SocketAddress = SocketAddress{
  socketAddress_address_family = Common_Types.INET,
  socketAddress_address = Nothing,
  socketAddress_port = Just -1}
-- | Definition of the NodeID struct
data NodeID = NodeID
  { nodeID_node_index :: Maybe Int.Int16
    -- ^ node_index field of the NodeID struct
  , nodeID_address :: Maybe Common_Types.SocketAddress
    -- ^ address field of the NodeID struct
  , nodeID_name :: Maybe LT.Text
    -- ^ name field of the NodeID struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable NodeID where
  encode = encode_NodeID
  decode = decode_NodeID
instance Hashable.Hashable NodeID where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` nodeID_node_index record   `Hashable.hashWithSalt` nodeID_address record   `Hashable.hashWithSalt` nodeID_name record  
instance DeepSeq.NFData NodeID where
  rnf _record9 =
    DeepSeq.rnf (nodeID_node_index _record9) `seq`
    DeepSeq.rnf (nodeID_address _record9) `seq`
    DeepSeq.rnf (nodeID_name _record9) `seq`
    ()
instance Arbitrary.Arbitrary NodeID where 
  arbitrary = Monad.liftM NodeID (Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
  shrink obj | obj == default_NodeID = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_NodeID{nodeID_node_index = nodeID_node_index obj} then Nothing else Just $ default_NodeID{nodeID_node_index = nodeID_node_index obj}
    , if obj == default_NodeID{nodeID_address = nodeID_address obj} then Nothing else Just $ default_NodeID{nodeID_address = nodeID_address obj}
    , if obj == default_NodeID{nodeID_name = nodeID_name obj} then Nothing else Just $ default_NodeID{nodeID_name = nodeID_name obj}
    ]
-- | Translate a 'NodeID' to a 'Types.ThriftVal'
from_NodeID :: NodeID -> Types.ThriftVal
from_NodeID record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v12 -> (1, ("node_index",Types.TI16 _v12))) <$> nodeID_node_index record
  , (\_v12 -> (2, ("address",Common_Types.from_SocketAddress _v12))) <$> nodeID_address record
  , (\_v12 -> (3, ("name",Types.TString $ Encoding.encodeUtf8 _v12))) <$> nodeID_name record
  ]
-- | Write a 'NodeID' with the given 'Thrift.Protocol'
write_NodeID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodeID -> IO ()
write_NodeID oprot record = Thrift.writeVal oprot $ from_NodeID record
-- | Serialize a 'NodeID' in pure code
encode_NodeID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodeID -> BS.ByteString
encode_NodeID oprot record = Thrift.serializeVal oprot $ from_NodeID record
-- | Translate a 'Types.ThriftVal' to a 'NodeID'
to_NodeID :: Types.ThriftVal -> NodeID
to_NodeID (Types.TStruct fields) = NodeID{
  nodeID_node_index = maybe (Nothing) (\(_,_val14) -> Just (case _val14 of {Types.TI16 _val15 -> _val15; _ -> error "wrong type"})) (Map.lookup (1) fields),
  nodeID_address = maybe (Nothing) (\(_,_val14) -> Just (case _val14 of {Types.TStruct _val16 -> (Common_Types.to_SocketAddress (Types.TStruct _val16)); _ -> error "wrong type"})) (Map.lookup (2) fields),
  nodeID_name = maybe (Nothing) (\(_,_val14) -> Just (case _val14 of {Types.TString _val17 -> Encoding.decodeUtf8 _val17; _ -> error "wrong type"})) (Map.lookup (3) fields)
  }
to_NodeID _ = error "not a struct"
-- | Read a 'NodeID' struct with the given 'Thrift.Protocol'
read_NodeID :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO NodeID
read_NodeID iprot = to_NodeID <$> Thrift.readVal iprot (Types.T_STRUCT typemap_NodeID)
-- | Deserialize a 'NodeID' in pure code
decode_NodeID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> NodeID
decode_NodeID iprot bs = to_NodeID $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_NodeID) bs
-- | 'TypeMap' for the 'NodeID' struct
typemap_NodeID :: Types.TypeMap
typemap_NodeID = Map.fromList [("node_index",(1,Types.T_I16)),("address",(2,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("name",(3,Types.T_STRING))]
-- | Default values for the 'NodeID' struct
default_NodeID :: NodeID
default_NodeID = NodeID{
  nodeID_node_index = Nothing,
  nodeID_address = Nothing,
  nodeID_name = Nothing}
-- | Definition of the ShardID struct
data ShardID = ShardID
  { shardID_node :: Common_Types.NodeID
    -- ^ node field of the ShardID struct
  , shardID_shard_index :: Int.Int16
    -- ^ shard_index field of the ShardID struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable ShardID where
  encode = encode_ShardID
  decode = decode_ShardID
instance Hashable.Hashable ShardID where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` shardID_node record   `Hashable.hashWithSalt` shardID_shard_index record  
instance DeepSeq.NFData ShardID where
  rnf _record18 =
    DeepSeq.rnf (shardID_node _record18) `seq`
    DeepSeq.rnf (shardID_shard_index _record18) `seq`
    ()
instance Arbitrary.Arbitrary ShardID where 
  arbitrary = Monad.liftM ShardID (Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
  shrink obj | obj == default_ShardID = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_ShardID{shardID_node = shardID_node obj} then Nothing else Just $ default_ShardID{shardID_node = shardID_node obj}
    , if obj == default_ShardID{shardID_shard_index = shardID_shard_index obj} then Nothing else Just $ default_ShardID{shardID_shard_index = shardID_shard_index obj}
    ]
-- | Translate a 'ShardID' to a 'Types.ThriftVal'
from_ShardID :: ShardID -> Types.ThriftVal
from_ShardID record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v21 -> Just (1, ("node",Common_Types.from_NodeID _v21))) $ shardID_node record
  , (\_v21 -> Just (2, ("shard_index",Types.TI16 _v21))) $ shardID_shard_index record
  ]
-- | Write a 'ShardID' with the given 'Thrift.Protocol'
write_ShardID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> ShardID -> IO ()
write_ShardID oprot record = Thrift.writeVal oprot $ from_ShardID record
-- | Serialize a 'ShardID' in pure code
encode_ShardID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> ShardID -> BS.ByteString
encode_ShardID oprot record = Thrift.serializeVal oprot $ from_ShardID record
-- | Translate a 'Types.ThriftVal' to a 'ShardID'
to_ShardID :: Types.ThriftVal -> ShardID
to_ShardID (Types.TStruct fields) = ShardID{
  shardID_node = maybe (shardID_node default_ShardID) (\(_,_val23) -> (case _val23 of {Types.TStruct _val24 -> (Common_Types.to_NodeID (Types.TStruct _val24)); _ -> error "wrong type"})) (Map.lookup (1) fields),
  shardID_shard_index = maybe (shardID_shard_index default_ShardID) (\(_,_val23) -> (case _val23 of {Types.TI16 _val25 -> _val25; _ -> error "wrong type"})) (Map.lookup (2) fields)
  }
to_ShardID _ = error "not a struct"
-- | Read a 'ShardID' struct with the given 'Thrift.Protocol'
read_ShardID :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO ShardID
read_ShardID iprot = to_ShardID <$> Thrift.readVal iprot (Types.T_STRUCT typemap_ShardID)
-- | Deserialize a 'ShardID' in pure code
decode_ShardID :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> ShardID
decode_ShardID iprot bs = to_ShardID $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_ShardID) bs
-- | 'TypeMap' for the 'ShardID' struct
typemap_ShardID :: Types.TypeMap
typemap_ShardID = Map.fromList [("node",(1,(Types.T_STRUCT Common_Types.typemap_NodeID))),("shard_index",(2,Types.T_I16))]
-- | Default values for the 'ShardID' struct
default_ShardID :: ShardID
default_ShardID = ShardID{
  shardID_node = Common_Types.default_NodeID,
  shardID_shard_index = -1}
-- | Definition of the Addresses struct
data Addresses = Addresses
  { addresses_gossip :: Maybe Common_Types.SocketAddress
    -- ^ gossip field of the Addresses struct
  , addresses_ssl :: Maybe Common_Types.SocketAddress
    -- ^ ssl field of the Addresses struct
  , addresses_admin :: Maybe Common_Types.SocketAddress
    -- ^ admin field of the Addresses struct
  , addresses_server_to_server :: Maybe Common_Types.SocketAddress
    -- ^ server_to_server field of the Addresses struct
  , addresses_server_thrift_api :: Maybe Common_Types.SocketAddress
    -- ^ server_thrift_api field of the Addresses struct
  , addresses_client_thrift_api :: Maybe Common_Types.SocketAddress
    -- ^ client_thrift_api field of the Addresses struct
  , addresses_addresses_per_priority :: (Map.HashMap Common_Types.ClientNetworkPriority Common_Types.SocketAddress)
    -- ^ addresses_per_priority field of the Addresses struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable Addresses where
  encode = encode_Addresses
  decode = decode_Addresses
instance Hashable.Hashable Addresses where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` addresses_gossip record   `Hashable.hashWithSalt` addresses_ssl record   `Hashable.hashWithSalt` addresses_admin record   `Hashable.hashWithSalt` addresses_server_to_server record   `Hashable.hashWithSalt` addresses_server_thrift_api record   `Hashable.hashWithSalt` addresses_client_thrift_api record   `Hashable.hashWithSalt` addresses_addresses_per_priority record  
instance DeepSeq.NFData Addresses where
  rnf _record26 =
    DeepSeq.rnf (addresses_gossip _record26) `seq`
    DeepSeq.rnf (addresses_ssl _record26) `seq`
    DeepSeq.rnf (addresses_admin _record26) `seq`
    DeepSeq.rnf (addresses_server_to_server _record26) `seq`
    DeepSeq.rnf (addresses_server_thrift_api _record26) `seq`
    DeepSeq.rnf (addresses_client_thrift_api _record26) `seq`
    DeepSeq.rnf (addresses_addresses_per_priority _record26) `seq`
    ()
instance Arbitrary.Arbitrary Addresses where 
  arbitrary = Monad.liftM Addresses (Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
  shrink obj | obj == default_Addresses = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_Addresses{addresses_gossip = addresses_gossip obj} then Nothing else Just $ default_Addresses{addresses_gossip = addresses_gossip obj}
    , if obj == default_Addresses{addresses_ssl = addresses_ssl obj} then Nothing else Just $ default_Addresses{addresses_ssl = addresses_ssl obj}
    , if obj == default_Addresses{addresses_admin = addresses_admin obj} then Nothing else Just $ default_Addresses{addresses_admin = addresses_admin obj}
    , if obj == default_Addresses{addresses_server_to_server = addresses_server_to_server obj} then Nothing else Just $ default_Addresses{addresses_server_to_server = addresses_server_to_server obj}
    , if obj == default_Addresses{addresses_server_thrift_api = addresses_server_thrift_api obj} then Nothing else Just $ default_Addresses{addresses_server_thrift_api = addresses_server_thrift_api obj}
    , if obj == default_Addresses{addresses_client_thrift_api = addresses_client_thrift_api obj} then Nothing else Just $ default_Addresses{addresses_client_thrift_api = addresses_client_thrift_api obj}
    , if obj == default_Addresses{addresses_addresses_per_priority = addresses_addresses_per_priority obj} then Nothing else Just $ default_Addresses{addresses_addresses_per_priority = addresses_addresses_per_priority obj}
    ]
-- | Translate a 'Addresses' to a 'Types.ThriftVal'
from_Addresses :: Addresses -> Types.ThriftVal
from_Addresses record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v29 -> (1, ("gossip",Common_Types.from_SocketAddress _v29))) <$> addresses_gossip record
  , (\_v29 -> (2, ("ssl",Common_Types.from_SocketAddress _v29))) <$> addresses_ssl record
  , (\_v29 -> (3, ("admin",Common_Types.from_SocketAddress _v29))) <$> addresses_admin record
  , (\_v29 -> (4, ("server_to_server",Common_Types.from_SocketAddress _v29))) <$> addresses_server_to_server record
  , (\_v29 -> (5, ("server_thrift_api",Common_Types.from_SocketAddress _v29))) <$> addresses_server_thrift_api record
  , (\_v29 -> (6, ("client_thrift_api",Common_Types.from_SocketAddress _v29))) <$> addresses_client_thrift_api record
  , (\_v29 -> Just (7, ("addresses_per_priority",Types.TMap Types.T_I32 (Types.T_STRUCT Common_Types.typemap_SocketAddress) $ map (\(_k30,_v31) -> (Types.TI32 $ fromIntegral $ fromEnum _k30, Common_Types.from_SocketAddress _v31)) $ Map.toList _v29))) $ addresses_addresses_per_priority record
  ]
-- | Write a 'Addresses' with the given 'Thrift.Protocol'
write_Addresses :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Addresses -> IO ()
write_Addresses oprot record = Thrift.writeVal oprot $ from_Addresses record
-- | Serialize a 'Addresses' in pure code
encode_Addresses :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Addresses -> BS.ByteString
encode_Addresses oprot record = Thrift.serializeVal oprot $ from_Addresses record
-- | Translate a 'Types.ThriftVal' to a 'Addresses'
to_Addresses :: Types.ThriftVal -> Addresses
to_Addresses (Types.TStruct fields) = Addresses{
  addresses_gossip = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val34 -> (Common_Types.to_SocketAddress (Types.TStruct _val34)); _ -> error "wrong type"})) (Map.lookup (1) fields),
  addresses_ssl = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val35 -> (Common_Types.to_SocketAddress (Types.TStruct _val35)); _ -> error "wrong type"})) (Map.lookup (2) fields),
  addresses_admin = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val36 -> (Common_Types.to_SocketAddress (Types.TStruct _val36)); _ -> error "wrong type"})) (Map.lookup (3) fields),
  addresses_server_to_server = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val37 -> (Common_Types.to_SocketAddress (Types.TStruct _val37)); _ -> error "wrong type"})) (Map.lookup (4) fields),
  addresses_server_thrift_api = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val38 -> (Common_Types.to_SocketAddress (Types.TStruct _val38)); _ -> error "wrong type"})) (Map.lookup (5) fields),
  addresses_client_thrift_api = maybe (Nothing) (\(_,_val33) -> Just (case _val33 of {Types.TStruct _val39 -> (Common_Types.to_SocketAddress (Types.TStruct _val39)); _ -> error "wrong type"})) (Map.lookup (6) fields),
  addresses_addresses_per_priority = maybe (addresses_addresses_per_priority default_Addresses) (\(_,_val33) -> (case _val33 of {Types.TMap _ _ _val40 -> (Map.fromList $ map (\(_k42,_v41) -> ((case _k42 of {Types.TI32 _val43 -> toEnum $ fromIntegral _val43; _ -> error "wrong type"}),(case _v41 of {Types.TStruct _val44 -> (Common_Types.to_SocketAddress (Types.TStruct _val44)); _ -> error "wrong type"}))) _val40); _ -> error "wrong type"})) (Map.lookup (7) fields)
  }
to_Addresses _ = error "not a struct"
-- | Read a 'Addresses' struct with the given 'Thrift.Protocol'
read_Addresses :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO Addresses
read_Addresses iprot = to_Addresses <$> Thrift.readVal iprot (Types.T_STRUCT typemap_Addresses)
-- | Deserialize a 'Addresses' in pure code
decode_Addresses :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> Addresses
decode_Addresses iprot bs = to_Addresses $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_Addresses) bs
-- | 'TypeMap' for the 'Addresses' struct
typemap_Addresses :: Types.TypeMap
typemap_Addresses = Map.fromList [("gossip",(1,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("ssl",(2,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("admin",(3,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("server_to_server",(4,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("server_thrift_api",(5,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("client_thrift_api",(6,(Types.T_STRUCT Common_Types.typemap_SocketAddress))),("addresses_per_priority",(7,(Types.T_MAP Types.T_I32 (Types.T_STRUCT Common_Types.typemap_SocketAddress))))]
-- | Default values for the 'Addresses' struct
default_Addresses :: Addresses
default_Addresses = Addresses{
  addresses_gossip = Nothing,
  addresses_ssl = Nothing,
  addresses_admin = Nothing,
  addresses_server_to_server = Nothing,
  addresses_server_thrift_api = Nothing,
  addresses_client_thrift_api = Nothing,
  addresses_addresses_per_priority = Map.empty}
