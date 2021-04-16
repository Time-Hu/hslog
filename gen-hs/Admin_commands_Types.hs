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

module Admin_commands_Types where
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


-- | Definition of the AdminCommandRequest struct
data AdminCommandRequest = AdminCommandRequest
  { adminCommandRequest_request :: LT.Text
    -- ^ request field of the AdminCommandRequest struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable AdminCommandRequest where
  encode = encode_AdminCommandRequest
  decode = decode_AdminCommandRequest
instance Hashable.Hashable AdminCommandRequest where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` adminCommandRequest_request record  
instance DeepSeq.NFData AdminCommandRequest where
  rnf _record0 =
    DeepSeq.rnf (adminCommandRequest_request _record0) `seq`
    ()
instance Arbitrary.Arbitrary AdminCommandRequest where 
  arbitrary = Monad.liftM AdminCommandRequest (Arbitrary.arbitrary)
  shrink obj | obj == default_AdminCommandRequest = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_AdminCommandRequest{adminCommandRequest_request = adminCommandRequest_request obj} then Nothing else Just $ default_AdminCommandRequest{adminCommandRequest_request = adminCommandRequest_request obj}
    ]
-- | Translate a 'AdminCommandRequest' to a 'Types.ThriftVal'
from_AdminCommandRequest :: AdminCommandRequest -> Types.ThriftVal
from_AdminCommandRequest record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("request",Types.TString $ Encoding.encodeUtf8 _v3))) $ adminCommandRequest_request record
  ]
-- | Write a 'AdminCommandRequest' with the given 'Thrift.Protocol'
write_AdminCommandRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AdminCommandRequest -> IO ()
write_AdminCommandRequest oprot record = Thrift.writeVal oprot $ from_AdminCommandRequest record
-- | Serialize a 'AdminCommandRequest' in pure code
encode_AdminCommandRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AdminCommandRequest -> BS.ByteString
encode_AdminCommandRequest oprot record = Thrift.serializeVal oprot $ from_AdminCommandRequest record
-- | Translate a 'Types.ThriftVal' to a 'AdminCommandRequest'
to_AdminCommandRequest :: Types.ThriftVal -> AdminCommandRequest
to_AdminCommandRequest (Types.TStruct fields) = AdminCommandRequest{
  adminCommandRequest_request = maybe (adminCommandRequest_request default_AdminCommandRequest) (\(_,_val5) -> (case _val5 of {Types.TString _val6 -> Encoding.decodeUtf8 _val6; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_AdminCommandRequest _ = error "not a struct"
-- | Read a 'AdminCommandRequest' struct with the given 'Thrift.Protocol'
read_AdminCommandRequest :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO AdminCommandRequest
read_AdminCommandRequest iprot = to_AdminCommandRequest <$> Thrift.readVal iprot (Types.T_STRUCT typemap_AdminCommandRequest)
-- | Deserialize a 'AdminCommandRequest' in pure code
decode_AdminCommandRequest :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> AdminCommandRequest
decode_AdminCommandRequest iprot bs = to_AdminCommandRequest $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_AdminCommandRequest) bs
-- | 'TypeMap' for the 'AdminCommandRequest' struct
typemap_AdminCommandRequest :: Types.TypeMap
typemap_AdminCommandRequest = Map.fromList [("request",(1,Types.T_STRING))]
-- | Default values for the 'AdminCommandRequest' struct
default_AdminCommandRequest :: AdminCommandRequest
default_AdminCommandRequest = AdminCommandRequest{
  adminCommandRequest_request = ""}
-- | Definition of the AdminCommandResponse struct
data AdminCommandResponse = AdminCommandResponse
  { adminCommandResponse_response :: LT.Text
    -- ^ response field of the AdminCommandResponse struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable AdminCommandResponse where
  encode = encode_AdminCommandResponse
  decode = decode_AdminCommandResponse
instance Hashable.Hashable AdminCommandResponse where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` adminCommandResponse_response record  
instance DeepSeq.NFData AdminCommandResponse where
  rnf _record7 =
    DeepSeq.rnf (adminCommandResponse_response _record7) `seq`
    ()
instance Arbitrary.Arbitrary AdminCommandResponse where 
  arbitrary = Monad.liftM AdminCommandResponse (Arbitrary.arbitrary)
  shrink obj | obj == default_AdminCommandResponse = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_AdminCommandResponse{adminCommandResponse_response = adminCommandResponse_response obj} then Nothing else Just $ default_AdminCommandResponse{adminCommandResponse_response = adminCommandResponse_response obj}
    ]
-- | Translate a 'AdminCommandResponse' to a 'Types.ThriftVal'
from_AdminCommandResponse :: AdminCommandResponse -> Types.ThriftVal
from_AdminCommandResponse record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v10 -> Just (1, ("response",Types.TString $ Encoding.encodeUtf8 _v10))) $ adminCommandResponse_response record
  ]
-- | Write a 'AdminCommandResponse' with the given 'Thrift.Protocol'
write_AdminCommandResponse :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AdminCommandResponse -> IO ()
write_AdminCommandResponse oprot record = Thrift.writeVal oprot $ from_AdminCommandResponse record
-- | Serialize a 'AdminCommandResponse' in pure code
encode_AdminCommandResponse :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AdminCommandResponse -> BS.ByteString
encode_AdminCommandResponse oprot record = Thrift.serializeVal oprot $ from_AdminCommandResponse record
-- | Translate a 'Types.ThriftVal' to a 'AdminCommandResponse'
to_AdminCommandResponse :: Types.ThriftVal -> AdminCommandResponse
to_AdminCommandResponse (Types.TStruct fields) = AdminCommandResponse{
  adminCommandResponse_response = maybe (adminCommandResponse_response default_AdminCommandResponse) (\(_,_val12) -> (case _val12 of {Types.TString _val13 -> Encoding.decodeUtf8 _val13; _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_AdminCommandResponse _ = error "not a struct"
-- | Read a 'AdminCommandResponse' struct with the given 'Thrift.Protocol'
read_AdminCommandResponse :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO AdminCommandResponse
read_AdminCommandResponse iprot = to_AdminCommandResponse <$> Thrift.readVal iprot (Types.T_STRUCT typemap_AdminCommandResponse)
-- | Deserialize a 'AdminCommandResponse' in pure code
decode_AdminCommandResponse :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> AdminCommandResponse
decode_AdminCommandResponse iprot bs = to_AdminCommandResponse $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_AdminCommandResponse) bs
-- | 'TypeMap' for the 'AdminCommandResponse' struct
typemap_AdminCommandResponse :: Types.TypeMap
typemap_AdminCommandResponse = Map.fromList [("response",(1,Types.T_STRING))]
-- | Default values for the 'AdminCommandResponse' struct
default_AdminCommandResponse :: AdminCommandResponse
default_AdminCommandResponse = AdminCommandResponse{
  adminCommandResponse_response = ""}