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

module DigestService where
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


import qualified FacebookService
import qualified Digest_Types
import qualified DigestService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

-- | Definition of the Query_args struct
data Query_args = Query_args
  { query_args_request :: Digest_Types.QueryRequest
    -- ^ request field of the Query_args struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable Query_args where
  encode = encode_Query_args
  decode = decode_Query_args
instance Hashable.Hashable Query_args where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` query_args_request record  
instance DeepSeq.NFData Query_args where
  rnf _record63 =
    DeepSeq.rnf (query_args_request _record63) `seq`
    ()
instance Arbitrary.Arbitrary Query_args where 
  arbitrary = Monad.liftM Query_args (Arbitrary.arbitrary)
  shrink obj | obj == default_Query_args = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_Query_args{query_args_request = query_args_request obj} then Nothing else Just $ default_Query_args{query_args_request = query_args_request obj}
    ]
-- | Translate a 'Query_args' to a 'Types.ThriftVal'
from_Query_args :: Query_args -> Types.ThriftVal
from_Query_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v66 -> Just (1, ("request",Digest_Types.from_QueryRequest _v66))) $ query_args_request record
  ]
-- | Write a 'Query_args' with the given 'Thrift.Protocol'
write_Query_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Query_args -> IO ()
write_Query_args oprot record = Thrift.writeVal oprot $ from_Query_args record
-- | Serialize a 'Query_args' in pure code
encode_Query_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Query_args -> BS.ByteString
encode_Query_args oprot record = Thrift.serializeVal oprot $ from_Query_args record
-- | Translate a 'Types.ThriftVal' to a 'Query_args'
to_Query_args :: Types.ThriftVal -> Query_args
to_Query_args (Types.TStruct fields) = Query_args{
  query_args_request = maybe (query_args_request default_Query_args) (\(_,_val68) -> (case _val68 of {Types.TStruct _val69 -> (Digest_Types.to_QueryRequest (Types.TStruct _val69)); _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_Query_args _ = error "not a struct"
-- | Read a 'Query_args' struct with the given 'Thrift.Protocol'
read_Query_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO Query_args
read_Query_args iprot = to_Query_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_Query_args)
-- | Deserialize a 'Query_args' in pure code
decode_Query_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> Query_args
decode_Query_args iprot bs = to_Query_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_Query_args) bs
-- | 'TypeMap' for the 'Query_args' struct
typemap_Query_args :: Types.TypeMap
typemap_Query_args = Map.fromList [("request",(1,(Types.T_STRUCT Digest_Types.typemap_QueryRequest)))]
-- | Default values for the 'Query_args' struct
default_Query_args :: Query_args
default_Query_args = Query_args{
  query_args_request = Digest_Types.default_QueryRequest}
-- | Definition of the Query_result struct
data Query_result = Query_result
  { query_result_success :: 