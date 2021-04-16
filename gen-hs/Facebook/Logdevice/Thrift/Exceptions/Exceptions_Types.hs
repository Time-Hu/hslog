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

module HStream.Store.Thrift.Exceptions.Exceptions_Types where
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

import qualified HStream.Store.Thrift.Common.Common_Types as Common_Types


-- | Definition of the NodeNotReady struct
data NodeNotReady = NodeNotReady
  { nodeNotReady_message :: LT.Text
    -- ^ message field of the NodeNotReady struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception NodeNotReady
instance Serializable.ThriftSerializable NodeNotReady where
  encode = encode_NodeNotReady
  decode = decode_NodeNotReady
instance Hashable.Hashable NodeNotReady where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` nodeNotReady_message record
instance DeepSeq.NFData NodeNotReady where
  rnf _record0 =
    DeepSeq.rnf (nodeNotReady_message _record0) `seq`
    ()
instance Arbitrary.Arbitrary NodeNotReady where
  arbitrary = Monad.liftM NodeNotReady (Arbitrary.arbitrary)
  shrink obj | obj == default_NodeNotReady = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_NodeNotReady{nodeNotReady_message = nodeNotReady_message obj} then Nothing else Just $ default_NodeNotReady{nodeNotReady_message = nodeNotReady_message obj}
    ]
-- | Translate a 'NodeNotReady' to a 'Types.ThriftVal'
from_NodeNotReady :: NodeNotReady -> Types.ThriftVal
from_NodeNotReady record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v3))) $ nodeNotReady_message record
  ]
-- | Write a 'NodeNotReady' with the given 'Thrift.Protocol'
write_NodeNotReady :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodeNotReady -> IO ()
write_NodeNotReady oprot record = Thrift.writeVal oprot $ from_NodeNotReady record
-- | Serialize a 'NodeNotReady' in pure code
encode_NodeNotReady :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodeNotReady -> BS.ByteString
encode_NodeNotReady oprot record = Thrift.serializeVal oprot $ from_NodeNotReady record
-- | Translate a 'Types.ThriftVal' to a 'NodeNotReady'
to_NodeNotReady :: Types.ThriftVal -> NodeNotReady
to_NodeNotReady (Types.TStruct fields) = NodeNotReady{
  nodeNotReady_message = maybe (nodeNotReady_message default_NodeNotReady) (\(_,_val5) -> (case _val5 of {Types.TString _val6 -> Encoding.decodeUtf8 _val6; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_NodeNotReady _ = error "not a struct"
-- | Read a 'NodeNotReady' struct with the given 'Thrift.Protocol'
read_NodeNotReady :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO NodeNotReady
read_NodeNotReady iprot = to_NodeNotReady <$> Thrift.readVal iprot (Types.T_STRUCT typemap_NodeNotReady)
-- | Deserialize a 'NodeNotReady' in pure code
decode_NodeNotReady :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> NodeNotReady
decode_NodeNotReady iprot bs = to_NodeNotReady $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_NodeNotReady) bs
-- | 'TypeMap' for the 'NodeNotReady' struct
typemap_NodeNotReady :: Types.TypeMap
typemap_NodeNotReady = Map.fromList [("message",(1,Types.T_STRING))]
-- | Default values for the 'NodeNotReady' struct
default_NodeNotReady :: NodeNotReady
default_NodeNotReady = NodeNotReady{
  nodeNotReady_message = ""}
-- | Definition of the StaleVersion struct
data StaleVersion = StaleVersion
  { staleVersion_message :: LT.Text
    -- ^ message field of the StaleVersion struct
  , staleVersion_server_version :: Int.Int64
    -- ^ server_version field of the StaleVersion struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception StaleVersion
instance Serializable.ThriftSerializable StaleVersion where
  encode = encode_StaleVersion
  decode = decode_StaleVersion
instance Hashable.Hashable StaleVersion where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` staleVersion_message record   `Hashable.hashWithSalt` staleVersion_server_version record
instance DeepSeq.NFData StaleVersion where
  rnf _record7 =
    DeepSeq.rnf (staleVersion_message _record7) `seq`
    DeepSeq.rnf (staleVersion_server_version _record7) `seq`
    ()
instance Arbitrary.Arbitrary StaleVersion where
  arbitrary = Monad.liftM StaleVersion (Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
  shrink obj | obj == default_StaleVersion = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_StaleVersion{staleVersion_message = staleVersion_message obj} then Nothing else Just $ default_StaleVersion{staleVersion_message = staleVersion_message obj}
    , if obj == default_StaleVersion{staleVersion_server_version = staleVersion_server_version obj} then Nothing else Just $ default_StaleVersion{staleVersion_server_version = staleVersion_server_version obj}
    ]
-- | Translate a 'StaleVersion' to a 'Types.ThriftVal'
from_StaleVersion :: StaleVersion -> Types.ThriftVal
from_StaleVersion record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v10 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v10))) $ staleVersion_message record
  , (\_v10 -> Just (2, ("server_version",Types.TI64 _v10))) $ staleVersion_server_version record
  ]
-- | Write a 'StaleVersion' with the given 'Thrift.Protocol'
write_StaleVersion :: (Thrift.Protocol p, Thrift.Transport t) => p t -> StaleVersion -> IO ()
write_StaleVersion oprot record = Thrift.writeVal oprot $ from_StaleVersion record
-- | Serialize a 'StaleVersion' in pure code
encode_StaleVersion :: (Thrift.Protocol p, Thrift.Transport t) => p t -> StaleVersion -> BS.ByteString
encode_StaleVersion oprot record = Thrift.serializeVal oprot $ from_StaleVersion record
-- | Translate a 'Types.ThriftVal' to a 'StaleVersion'
to_StaleVersion :: Types.ThriftVal -> StaleVersion
to_StaleVersion (Types.TStruct fields) = StaleVersion{
  staleVersion_message = maybe (staleVersion_message default_StaleVersion) (\(_,_val12) -> (case _val12 of {Types.TString _val13 -> Encoding.decodeUtf8 _val13; _ -> error "wrong type"})) (Map.lookup (1) fields),
  staleVersion_server_version = maybe (staleVersion_server_version default_StaleVersion) (\(_,_val12) -> (case _val12 of {Types.TI64 _val14 -> _val14; _ -> error "wrong type"})) (Map.lookup (2) fields)
  }
to_StaleVersion _ = error "not a struct"
-- | Read a 'StaleVersion' struct with the given 'Thrift.Protocol'
read_StaleVersion :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO StaleVersion
read_StaleVersion iprot = to_StaleVersion <$> Thrift.readVal iprot (Types.T_STRUCT typemap_StaleVersion)
-- | Deserialize a 'StaleVersion' in pure code
decode_StaleVersion :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> StaleVersion
decode_StaleVersion iprot bs = to_StaleVersion $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_StaleVersion) bs
-- | 'TypeMap' for the 'StaleVersion' struct
typemap_StaleVersion :: Types.TypeMap
typemap_StaleVersion = Map.fromList [("message",(1,Types.T_STRING)),("server_version",(2,Types.T_I64))]
-- | Default values for the 'StaleVersion' struct
default_StaleVersion :: StaleVersion
default_StaleVersion = StaleVersion{
  staleVersion_message = "",
  staleVersion_server_version = 0}
-- | Definition of the NotSupported struct
data NotSupported = NotSupported
  { notSupported_message :: LT.Text
    -- ^ message field of the NotSupported struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception NotSupported
instance Serializable.ThriftSerializable NotSupported where
  encode = encode_NotSupported
  decode = decode_NotSupported
instance Hashable.Hashable NotSupported where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` notSupported_message record
instance DeepSeq.NFData NotSupported where
  rnf _record15 =
    DeepSeq.rnf (notSupported_message _record15) `seq`
    ()
instance Arbitrary.Arbitrary NotSupported where
  arbitrary = Monad.liftM NotSupported (Arbitrary.arbitrary)
  shrink obj | obj == default_NotSupported = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_NotSupported{notSupported_message = notSupported_message obj} then Nothing else Just $ default_NotSupported{notSupported_message = notSupported_message obj}
    ]
-- | Translate a 'NotSupported' to a 'Types.ThriftVal'
from_NotSupported :: NotSupported -> Types.ThriftVal
from_NotSupported record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v18 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v18))) $ notSupported_message record
  ]
-- | Write a 'NotSupported' with the given 'Thrift.Protocol'
write_NotSupported :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NotSupported -> IO ()
write_NotSupported oprot record = Thrift.writeVal oprot $ from_NotSupported record
-- | Serialize a 'NotSupported' in pure code
encode_NotSupported :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NotSupported -> BS.ByteString
encode_NotSupported oprot record = Thrift.serializeVal oprot $ from_NotSupported record
-- | Translate a 'Types.ThriftVal' to a 'NotSupported'
to_NotSupported :: Types.ThriftVal -> NotSupported
to_NotSupported (Types.TStruct fields) = NotSupported{
  notSupported_message = maybe (notSupported_message default_NotSupported) (\(_,_val20) -> (case _val20 of {Types.TString _val21 -> Encoding.decodeUtf8 _val21; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_NotSupported _ = error "not a struct"
-- | Read a 'NotSupported' struct with the given 'Thrift.Protocol'
read_NotSupported :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO NotSupported
read_NotSupported iprot = to_NotSupported <$> Thrift.readVal iprot (Types.T_STRUCT typemap_NotSupported)
-- | Deserialize a 'NotSupported' in pure code
decode_NotSupported :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> NotSupported
decode_NotSupported iprot bs = to_NotSupported $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_NotSupported) bs
-- | 'TypeMap' for the 'NotSupported' struct
typemap_NotSupported :: Types.TypeMap
typemap_NotSupported = Map.fromList [("message",(1,Types.T_STRING))]
-- | Default values for the 'NotSupported' struct
default_NotSupported :: NotSupported
default_NotSupported = NotSupported{
  notSupported_message = ""}
-- | Definition of the OperationError struct
data OperationError = OperationError
  { operationError_message :: LT.Text
    -- ^ message field of the OperationError struct
  , operationError_error_code :: Maybe Int.Int32
    -- ^ error_code field of the OperationError struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception OperationError
instance Serializable.ThriftSerializable OperationError where
  encode = encode_OperationError
  decode = decode_OperationError
instance Hashable.Hashable OperationError where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` operationError_message record   `Hashable.hashWithSalt` operationError_error_code record
instance DeepSeq.NFData OperationError where
  rnf _record22 =
    DeepSeq.rnf (operationError_message _record22) `seq`
    DeepSeq.rnf (operationError_error_code _record22) `seq`
    ()
instance Arbitrary.Arbitrary OperationError where
  arbitrary = Monad.liftM OperationError (Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
  shrink obj | obj == default_OperationError = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_OperationError{operationError_message = operationError_message obj} then Nothing else Just $ default_OperationError{operationError_message = operationError_message obj}
    , if obj == default_OperationError{operationError_error_code = operationError_error_code obj} then Nothing else Just $ default_OperationError{operationError_error_code = operationError_error_code obj}
    ]
-- | Translate a 'OperationError' to a 'Types.ThriftVal'
from_OperationError :: OperationError -> Types.ThriftVal
from_OperationError record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v25 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v25))) $ operationError_message record
  , (\_v25 -> (2, ("error_code",Types.TI32 _v25))) <$> operationError_error_code record
  ]
-- | Write a 'OperationError' with the given 'Thrift.Protocol'
write_OperationError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> OperationError -> IO ()
write_OperationError oprot record = Thrift.writeVal oprot $ from_OperationError record
-- | Serialize a 'OperationError' in pure code
encode_OperationError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> OperationError -> BS.ByteString
encode_OperationError oprot record = Thrift.serializeVal oprot $ from_OperationError record
-- | Translate a 'Types.ThriftVal' to a 'OperationError'
to_OperationError :: Types.ThriftVal -> OperationError
to_OperationError (Types.TStruct fields) = OperationError{
  operationError_message = maybe (operationError_message default_OperationError) (\(_,_val27) -> (case _val27 of {Types.TString _val28 -> Encoding.decodeUtf8 _val28; _ -> error "wrong type"})) (Map.lookup (1) fields),
  operationError_error_code = maybe (Nothing) (\(_,_val27) -> Just (case _val27 of {Types.TI32 _val29 -> _val29; _ -> error "wrong type"})) (Map.lookup (2) fields)
  }
to_OperationError _ = error "not a struct"
-- | Read a 'OperationError' struct with the given 'Thrift.Protocol'
read_OperationError :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO OperationError
read_OperationError iprot = to_OperationError <$> Thrift.readVal iprot (Types.T_STRUCT typemap_OperationError)
-- | Deserialize a 'OperationError' in pure code
decode_OperationError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> OperationError
decode_OperationError iprot bs = to_OperationError $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_OperationError) bs
-- | 'TypeMap' for the 'OperationError' struct
typemap_OperationError :: Types.TypeMap
typemap_OperationError = Map.fromList [("message",(1,Types.T_STRING)),("error_code",(2,Types.T_I32))]
-- | Default values for the 'OperationError' struct
default_OperationError :: OperationError
default_OperationError = OperationError{
  operationError_message = "",
  operationError_error_code = Nothing}
-- | Definition of the InvalidRequest struct
data InvalidRequest = InvalidRequest
  { invalidRequest_message :: LT.Text
    -- ^ message field of the InvalidRequest struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception InvalidRequest
instance Serializable.ThriftSerializable InvalidRequest where
  encode = encode_InvalidRequest
  decode = decode_InvalidRequest
instance Hashable.Hashable InvalidRequest where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` invalidRequest_message record
instance DeepSeq.NFData InvalidRequest where
  rnf _record30 =
    DeepSeq.rnf (invalidRequest_message _record30) `seq`
    ()
instance Arbitrary.Arbitrary InvalidRequest where
  arbitrary = Monad.liftM InvalidRequest (Arbitrary.arbitrary)
  shrink obj | obj == default_InvalidRequest = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_InvalidRequest{invalidRequest_message = invalidRequest_message obj} then Nothing else Just $ default_InvalidRequest{invalidRequest_message = invalidRequest_message obj}
    ]
-- | Translate a 'InvalidRequest' to a 'Types.ThriftVal'
from_InvalidRequest :: InvalidRequest -> Types.ThriftVal
from_InvalidRequest record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v33 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v33))) $ invalidRequest_message record
  ]
-- | Write a 'InvalidRequest' with the given 'Thrift.Protocol'
write_InvalidRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> InvalidRequest -> IO ()
write_InvalidRequest oprot record = Thrift.writeVal oprot $ from_InvalidRequest record
-- | Serialize a 'InvalidRequest' in pure code
encode_InvalidRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> InvalidRequest -> BS.ByteString
encode_InvalidRequest oprot record = Thrift.serializeVal oprot $ from_InvalidRequest record
-- | Translate a 'Types.ThriftVal' to a 'InvalidRequest'
to_InvalidRequest :: Types.ThriftVal -> InvalidRequest
to_InvalidRequest (Types.TStruct fields) = InvalidRequest{
  invalidRequest_message = maybe (invalidRequest_message default_InvalidRequest) (\(_,_val35) -> (case _val35 of {Types.TString _val36 -> Encoding.decodeUtf8 _val36; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_InvalidRequest _ = error "not a struct"
-- | Read a 'InvalidRequest' struct with the given 'Thrift.Protocol'
read_InvalidRequest :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO InvalidRequest
read_InvalidRequest iprot = to_InvalidRequest <$> Thrift.readVal iprot (Types.T_STRUCT typemap_InvalidRequest)
-- | Deserialize a 'InvalidRequest' in pure code
decode_InvalidRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> InvalidRequest
decode_InvalidRequest iprot bs = to_InvalidRequest $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_InvalidRequest) bs
-- | 'TypeMap' for the 'InvalidRequest' struct
typemap_InvalidRequest :: Types.TypeMap
typemap_InvalidRequest = Map.fromList [("message",(1,Types.T_STRING))]
-- | Default values for the 'InvalidRequest' struct
default_InvalidRequest :: InvalidRequest
default_InvalidRequest = InvalidRequest{
  invalidRequest_message = ""}
-- | Definition of the MaintenanceClash struct
data MaintenanceClash = MaintenanceClash
  { maintenanceClash_message :: LT.Text
    -- ^ message field of the MaintenanceClash struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception MaintenanceClash
instance Serializable.ThriftSerializable MaintenanceClash where
  encode = encode_MaintenanceClash
  decode = decode_MaintenanceClash
instance Hashable.Hashable MaintenanceClash where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` maintenanceClash_message record
instance DeepSeq.NFData MaintenanceClash where
  rnf _record37 =
    DeepSeq.rnf (maintenanceClash_message _record37) `seq`
    ()
instance Arbitrary.Arbitrary MaintenanceClash where
  arbitrary = Monad.liftM MaintenanceClash (Arbitrary.arbitrary)
  shrink obj | obj == default_MaintenanceClash = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_MaintenanceClash{maintenanceClash_message = maintenanceClash_message obj} then Nothing else Just $ default_MaintenanceClash{maintenanceClash_message = maintenanceClash_message obj}
    ]
-- | Translate a 'MaintenanceClash' to a 'Types.ThriftVal'
from_MaintenanceClash :: MaintenanceClash -> Types.ThriftVal
from_MaintenanceClash record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v40 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v40))) $ maintenanceClash_message record
  ]
-- | Write a 'MaintenanceClash' with the given 'Thrift.Protocol'
write_MaintenanceClash :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceClash -> IO ()
write_MaintenanceClash oprot record = Thrift.writeVal oprot $ from_MaintenanceClash record
-- | Serialize a 'MaintenanceClash' in pure code
encode_MaintenanceClash :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceClash -> BS.ByteString
encode_MaintenanceClash oprot record = Thrift.serializeVal oprot $ from_MaintenanceClash record
-- | Translate a 'Types.ThriftVal' to a 'MaintenanceClash'
to_MaintenanceClash :: Types.ThriftVal -> MaintenanceClash
to_MaintenanceClash (Types.TStruct fields) = MaintenanceClash{
  maintenanceClash_message = maybe (maintenanceClash_message default_MaintenanceClash) (\(_,_val42) -> (case _val42 of {Types.TString _val43 -> Encoding.decodeUtf8 _val43; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_MaintenanceClash _ = error "not a struct"
-- | Read a 'MaintenanceClash' struct with the given 'Thrift.Protocol'
read_MaintenanceClash :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO MaintenanceClash
read_MaintenanceClash iprot = to_MaintenanceClash <$> Thrift.readVal iprot (Types.T_STRUCT typemap_MaintenanceClash)
-- | Deserialize a 'MaintenanceClash' in pure code
decode_MaintenanceClash :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> MaintenanceClash
decode_MaintenanceClash iprot bs = to_MaintenanceClash $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_MaintenanceClash) bs
-- | 'TypeMap' for the 'MaintenanceClash' struct
typemap_MaintenanceClash :: Types.TypeMap
typemap_MaintenanceClash = Map.fromList [("message",(1,Types.T_STRING))]
-- | Default values for the 'MaintenanceClash' struct
default_MaintenanceClash :: MaintenanceClash
default_MaintenanceClash = MaintenanceClash{
  maintenanceClash_message = ""}
-- | Definition of the MaintenanceMatchError struct
data MaintenanceMatchError = MaintenanceMatchError
  { maintenanceMatchError_message :: LT.Text
    -- ^ message field of the MaintenanceMatchError struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception MaintenanceMatchError
instance Serializable.ThriftSerializable MaintenanceMatchError where
  encode = encode_MaintenanceMatchError
  decode = decode_MaintenanceMatchError
instance Hashable.Hashable MaintenanceMatchError where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` maintenanceMatchError_message record
instance DeepSeq.NFData MaintenanceMatchError where
  rnf _record44 =
    DeepSeq.rnf (maintenanceMatchError_message _record44) `seq`
    ()
instance Arbitrary.Arbitrary MaintenanceMatchError where
  arbitrary = Monad.liftM MaintenanceMatchError (Arbitrary.arbitrary)
  shrink obj | obj == default_MaintenanceMatchError = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_MaintenanceMatchError{maintenanceMatchError_message = maintenanceMatchError_message obj} then Nothing else Just $ default_MaintenanceMatchError{maintenanceMatchError_message = maintenanceMatchError_message obj}
    ]
-- | Translate a 'MaintenanceMatchError' to a 'Types.ThriftVal'
from_MaintenanceMatchError :: MaintenanceMatchError -> Types.ThriftVal
from_MaintenanceMatchError record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v47 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v47))) $ maintenanceMatchError_message record
  ]
-- | Write a 'MaintenanceMatchError' with the given 'Thrift.Protocol'
write_MaintenanceMatchError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceMatchError -> IO ()
write_MaintenanceMatchError oprot record = Thrift.writeVal oprot $ from_MaintenanceMatchError record
-- | Serialize a 'MaintenanceMatchError' in pure code
encode_MaintenanceMatchError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceMatchError -> BS.ByteString
encode_MaintenanceMatchError oprot record = Thrift.serializeVal oprot $ from_MaintenanceMatchError record
-- | Translate a 'Types.ThriftVal' to a 'MaintenanceMatchError'
to_MaintenanceMatchError :: Types.ThriftVal -> MaintenanceMatchError
to_MaintenanceMatchError (Types.TStruct fields) = MaintenanceMatchError{
  maintenanceMatchError_message = maybe (maintenanceMatchError_message default_MaintenanceMatchError) (\(_,_val49) -> (case _val49 of {Types.TString _val50 -> Encoding.decodeUtf8 _val50; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_MaintenanceMatchError _ = error "not a struct"
-- | Read a 'MaintenanceMatchError' struct with the given 'Thrift.Protocol'
read_MaintenanceMatchError :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO MaintenanceMatchError
read_MaintenanceMatchError iprot = to_MaintenanceMatchError <$> Thrift.readVal iprot (Types.T_STRUCT typemap_MaintenanceMatchError)
-- | Deserialize a 'MaintenanceMatchError' in pure code
decode_MaintenanceMatchError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> MaintenanceMatchError
decode_MaintenanceMatchError iprot bs = to_MaintenanceMatchError $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_MaintenanceMatchError) bs
-- | 'TypeMap' for the 'MaintenanceMatchError' struct
typemap_MaintenanceMatchError :: Types.TypeMap
typemap_MaintenanceMatchError = Map.fromList [("message",(1,Types.T_STRING))]
-- | Default values for the 'MaintenanceMatchError' struct
default_MaintenanceMatchError :: MaintenanceMatchError
default_MaintenanceMatchError = MaintenanceMatchError{
  maintenanceMatchError_message = ""}
-- | Definition of the NodesConfigurationManagerError struct
data NodesConfigurationManagerError = NodesConfigurationManagerError
  { nodesConfigurationManagerError_message :: LT.Text
    -- ^ message field of the NodesConfigurationManagerError struct
  , nodesConfigurationManagerError_error_code :: Maybe Int.Int32
    -- ^ error_code field of the NodesConfigurationManagerError struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Exception.Exception NodesConfigurationManagerError
instance Serializable.ThriftSerializable NodesConfigurationManagerError where
  encode = encode_NodesConfigurationManagerError
  decode = decode_NodesConfigurationManagerError
instance Hashable.Hashable NodesConfigurationManagerError where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` nodesConfigurationManagerError_message record   `Hashable.hashWithSalt` nodesConfigurationManagerError_error_code record
instance DeepSeq.NFData NodesConfigurationManagerError where
  rnf _record51 =
    DeepSeq.rnf (nodesConfigurationManagerError_message _record51) `seq`
    DeepSeq.rnf (nodesConfigurationManagerError_error_code _record51) `seq`
    ()
instance Arbitrary.Arbitrary NodesConfigurationManagerError where
  arbitrary = Monad.liftM NodesConfigurationManagerError (Arbitrary.arbitrary)
          `Monad.ap`(Monad.liftM Just Arbitrary.arbitrary)
  shrink obj | obj == default_NodesConfigurationManagerError = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_NodesConfigurationManagerError{nodesConfigurationManagerError_message = nodesConfigurationManagerError_message obj} then Nothing else Just $ default_NodesConfigurationManagerError{nodesConfigurationManagerError_message = nodesConfigurationManagerError_message obj}
    , if obj == default_NodesConfigurationManagerError{nodesConfigurationManagerError_error_code = nodesConfigurationManagerError_error_code obj} then Nothing else Just $ default_NodesConfigurationManagerError{nodesConfigurationManagerError_error_code = nodesConfigurationManagerError_error_code obj}
    ]
-- | Translate a 'NodesConfigurationManagerError' to a 'Types.ThriftVal'
from_NodesConfigurationManagerError :: NodesConfigurationManagerError -> Types.ThriftVal
from_NodesConfigurationManagerError record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v54 -> Just (1, ("message",Types.TString $ Encoding.encodeUtf8 _v54))) $ nodesConfigurationManagerError_message record
  , (\_v54 -> (2, ("error_code",Types.TI32 _v54))) <$> nodesConfigurationManagerError_error_code record
  ]
-- | Write a 'NodesConfigurationManagerError' with the given 'Thrift.Protocol'
write_NodesConfigurationManagerError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodesConfigurationManagerError -> IO ()
write_NodesConfigurationManagerError oprot record = Thrift.writeVal oprot $ from_NodesConfigurationManagerError record
-- | Serialize a 'NodesConfigurationManagerError' in pure code
encode_NodesConfigurationManagerError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> NodesConfigurationManagerError -> BS.ByteString
encode_NodesConfigurationManagerError oprot record = Thrift.serializeVal oprot $ from_NodesConfigurationManagerError record
-- | Translate a 'Types.ThriftVal' to a 'NodesConfigurationManagerError'
to_NodesConfigurationManagerError :: Types.ThriftVal -> NodesConfigurationManagerError
to_NodesConfigurationManagerError (Types.TStruct fields) = NodesConfigurationManagerError{
  nodesConfigurationManagerError_message = maybe (nodesConfigurationManagerError_message default_NodesConfigurationManagerError) (\(_,_val56) -> (case _val56 of {Types.TString _val57 -> Encoding.decodeUtf8 _val57; _ -> error "wrong type"})) (Map.lookup (1) fields),
  nodesConfigurationManagerError_error_code = maybe (Nothing) (\(_,_val56) -> Just (case _val56 of {Types.TI32 _val58 -> _val58; _ -> error "wrong type"})) (Map.lookup (2) fields)
  }
to_NodesConfigurationManagerError _ = error "not a struct"
-- | Read a 'NodesConfigurationManagerError' struct with the given 'Thrift.Protocol'
read_NodesConfigurationManagerError :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO NodesConfigurationManagerError
read_NodesConfigurationManagerError iprot = to_NodesConfigurationManagerError <$> Thrift.readVal iprot (Types.T_STRUCT typemap_NodesConfigurationManagerError)
-- | Deserialize a 'NodesConfigurationManagerError' in pure code
decode_NodesConfigurationManagerError :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> NodesConfigurationManagerError
decode_NodesConfigurationManagerError iprot bs = to_NodesConfigurationManagerError $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_NodesConfigurationManagerError) bs
-- | 'TypeMap' for the 'NodesConfigurationManagerError' struct
typemap_NodesConfigurationManagerError :: Types.TypeMap
typemap_NodesConfigurationManagerError = Map.fromList [("message",(1,Types.T_STRING)),("error_code",(2,Types.T_I32))]
-- | Default values for the 'NodesConfigurationManagerError' struct
default_NodesConfigurationManagerError :: NodesConfigurationManagerError
default_NodesConfigurationManagerError = NodesConfigurationManagerError{
  nodesConfigurationManagerError_message = "",
  nodesConfigurationManagerError_error_code = Nothing}
