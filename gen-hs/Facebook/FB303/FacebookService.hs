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

module Facebook.FB303.FacebookService where
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


import qualified Facebook.FB303.Fb303_Types
import qualified Facebook.FB303.FacebookService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

-- | Definition of the GetVersion_args struct
data GetVersion_args = GetVersion_args
 deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetVersion_args where
  encode = encode_GetVersion_args
  decode = decode_GetVersion_args
instance Hashable.Hashable GetVersion_args where
  hashWithSalt salt record = salt  
instance DeepSeq.NFData GetVersion_args where
  rnf _record0 =
    ()
instance Arbitrary.Arbitrary GetVersion_args where 
  arbitrary = QuickCheck.elements [GetVersion_args]
-- | Translate a 'GetVersion_args' to a 'Types.ThriftVal'
from_GetVersion_args :: GetVersion_args -> Types.ThriftVal
from_GetVersion_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  []
-- | Write a 'GetVersion_args' with the given 'Thrift.Protocol'
write_GetVersion_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetVersion_args -> IO ()
write_GetVersion_args oprot record = Thrift.writeVal oprot $ from_GetVersion_args record
-- | Serialize a 'GetVersion_args' in pure code
encode_GetVersion_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetVersion_args -> BS.ByteString
encode_GetVersion_args oprot record = Thrift.serializeVal oprot $ from_GetVersion_args record
-- | Translate a 'Types.ThriftVal' to a 'GetVersion_args'
to_GetVersion_args :: Types.ThriftVal -> GetVersion_args
to_GetVersion_args (Types.TStruct fields) = GetVersion_args{

  }
to_GetVersion_args _ = error "not a struct"
-- | Read a 'GetVersion_args' struct with the given 'Thrift.Protocol'
read_GetVersion_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetVersion_args
read_GetVersion_args iprot = to_GetVersion_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetVersion_args)
-- | Deserialize a 'GetVersion_args' in pure code
decode_GetVersion_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetVersion_args
decode_GetVersion_args iprot bs = to_GetVersion_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetVersion_args) bs
-- | 'TypeMap' for the 'GetVersion_args' struct
typemap_GetVersion_args :: Types.TypeMap
typemap_GetVersion_args = Map.fromList []
-- | Default values for the 'GetVersion_args' struct
default_GetVersion_args :: GetVersion_args
default_GetVersion_args = GetVersion_args{
}
-- | Definition of the GetVersion_result struct
data GetVersion_result = GetVersion_result
  { getVersion_result_success :: LT.Text
    -- ^ success field of the GetVersion_result struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetVersion_result where
  encode = encode_GetVersion_result
  decode = decode_GetVersion_result
instance Hashable.Hashable GetVersion_result where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` getVersion_result_success record  
instance DeepSeq.NFData GetVersion_result where
  rnf _record6 =
    DeepSeq.rnf (getVersion_result_success _record6) `seq`
    ()
instance Arbitrary.Arbitrary GetVersion_result where 
  arbitrary = Monad.liftM GetVersion_result (Arbitrary.arbitrary)
  shrink obj | obj == default_GetVersion_result = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_GetVersion_result{getVersion_result_success = getVersion_result_success obj} then Nothing else Just $ default_GetVersion_result{getVersion_result_success = getVersion_result_success obj}
    ]
-- | Translate a 'GetVersion_result' to a 'Types.ThriftVal'
from_GetVersion_result :: GetVersion_result -> Types.ThriftVal
from_GetVersion_result record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v9 -> Just (0, ("success",Types.TString $ Encoding.encodeUtf8 _v9))) $ getVersion_result_success record
  ]
-- | Write a 'GetVersion_result' with the given 'Thrift.Protocol'
write_GetVersion_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetVersion_result -> IO ()
write_GetVersion_result oprot record = Thrift.writeVal oprot $ from_GetVersion_result record
-- | Serialize a 'GetVersion_result' in pure code
encode_GetVersion_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetVersion_result -> BS.ByteString
encode_GetVersion_result oprot record = Thrift.serializeVal oprot $ from_GetVersion_result record
-- | Translate a 'Types.ThriftVal' to a 'GetVersion_result'
to_GetVersion_result :: Types.ThriftVal -> GetVersion_result
to_GetVersion_result (Types.TStruct fields) = GetVersion_result{
  getVersion_result_success = maybe (getVersion_result_success default_GetVersion_result) (\(_,_val11) -> (case _val11 of {Types.TString _val12 -> Encoding.decodeUtf8 _val12; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_GetVersion_result _ = error "not a struct"
-- | Read a 'GetVersion_result' struct with the given 'Thrift.Protocol'
read_GetVersion_result :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetVersion_result
read_GetVersion_result iprot = to_GetVersion_result <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetVersion_result)
-- | Deserialize a 'GetVersion_result' in pure code
decode_GetVersion_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetVersion_result
decode_GetVersion_result iprot bs = to_GetVersion_result $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetVersion_result) bs
-- | 'TypeMap' for the 'GetVersion_result' struct
typemap_GetVersion_result :: Types.TypeMap
typemap_GetVersion_result = Map.fromList [("success",(0,Types.T_STRING))]
-- | Default values for the 'GetVersion_result' struct
default_GetVersion_result :: GetVersion_result
default_GetVersion_result = GetVersion_result{
  getVersion_result_success = ""}
-- | Definition of the GetStatus_args struct
data GetStatus_args = GetStatus_args
 deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetStatus_args where
  encode = encode_GetStatus_args
  decode = decode_GetStatus_args
instance Hashable.Hashable GetStatus_args where
  hashWithSalt salt record = salt  
instance DeepSeq.NFData GetStatus_args where
  rnf _record13 =
    ()
instance Arbitrary.Arbitrary GetStatus_args where 
  arbitrary = QuickCheck.elements [GetStatus_args]
-- | Translate a 'GetStatus_args' to a 'Types.ThriftVal'
from_GetStatus_args :: GetStatus_args -> Types.ThriftVal
from_GetStatus_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  []
-- | Write a 'GetStatus_args' with the given 'Thrift.Protocol'
write_GetStatus_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetStatus_args -> IO ()
write_GetStatus_args oprot record = Thrift.writeVal oprot $ from_GetStatus_args record
-- | Serialize a 'GetStatus_args' in pure code
encode_GetStatus_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetStatus_args -> BS.ByteString
encode_GetStatus_args oprot record = Thrift.serializeVal oprot $ from_GetStatus_args record
-- | Translate a 'Types.ThriftVal' to a 'GetStatus_args'
to_GetStatus_args :: Types.ThriftVal -> GetStatus_args
to_GetStatus_args (Types.TStruct fields) = GetStatus_args{

  }
to_GetStatus_args _ = error "not a struct"
-- | Read a 'GetStatus_args' struct with the given 'Thrift.Protocol'
read_GetStatus_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetStatus_args
read_GetStatus_args iprot = to_GetStatus_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetStatus_args)
-- | Deserialize a 'GetStatus_args' in pure code
decode_GetStatus_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetStatus_args
decode_GetStatus_args iprot bs = to_GetStatus_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetStatus_args) bs
-- | 'TypeMap' for the 'GetStatus_args' struct
typemap_GetStatus_args :: Types.TypeMap
typemap_GetStatus_args = Map.fromList []
-- | Default values for the 'GetStatus_args' struct
default_GetStatus_args :: GetStatus_args
default_GetStatus_args = GetStatus_args{
}
-- | Definition of the GetStatus_result struct
data GetStatus_result = GetStatus_result
  { getStatus_result_success :: Fb303_Types.Fb_status
    -- ^ success field of the GetStatus_result struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetStatus_result where
  encode = encode_GetStatus_result
  decode = decode_GetStatus_result
instance Hashable.Hashable GetStatus_result where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` getStatus_result_success record  
instance DeepSeq.NFData GetStatus_result where
  rnf _record19 =
    DeepSeq.rnf (getStatus_result_success _record19) `seq`
    ()
instance Arbitrary.Arbitrary GetStatus_result where 
  arbitrary = Monad.liftM GetStatus_result (Arbitrary.arbitrary)
  shrink obj | obj == default_GetStatus_result = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_GetStatus_result{getStatus_result_success = getStatus_result_success obj} then Nothing else Just $ default_GetStatus_result{getStatus_result_success = getStatus_result_success obj}
    ]
-- | Translate a 'GetStatus_result' to a 'Types.ThriftVal'
from_GetStatus_result :: GetStatus_result -> Types.ThriftVal
from_GetStatus_result record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v22 -> Just (0, ("success",Types.TI32 $ fromIntegral $ fromEnum _v22))) $ getStatus_result_success record
  ]
-- | Write a 'GetStatus_result' with the given 'Thrift.Protocol'
write_GetStatus_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetStatus_result -> IO ()
write_GetStatus_result oprot record = Thrift.writeVal oprot $ from_GetStatus_result record
-- | Serialize a 'GetStatus_result' in pure code
encode_GetStatus_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetStatus_result -> BS.ByteString
encode_GetStatus_result oprot record = Thrift.serializeVal oprot $ from_GetStatus_result record
-- | Translate a 'Types.ThriftVal' to a 'GetStatus_result'
to_GetStatus_result :: Types.ThriftVal -> GetStatus_result
to_GetStatus_result (Types.TStruct fields) = GetStatus_result{
  getStatus_result_success = maybe (getStatus_result_success default_GetStatus_result) (\(_,_val24) -> (case _val24 of {Types.TI32 _val25 -> toEnum $ fromIntegral _val25; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_GetStatus_result _ = error "not a struct"
-- | Read a 'GetStatus_result' struct with the given 'Thrift.Protocol'
read_GetStatus_result :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetStatus_result
read_GetStatus_result iprot = to_GetStatus_result <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetStatus_result)
-- | Deserialize a 'GetStatus_result' in pure code
decode_GetStatus_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetStatus_result
decode_GetStatus_result iprot bs = to_GetStatus_result $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetStatus_result) bs
-- | 'TypeMap' for the 'GetStatus_result' struct
typemap_GetStatus_result :: Types.TypeMap
typemap_GetStatus_result = Map.fromList [("success",(0,Types.T_I32))]
-- | Default values for the 'GetStatus_result' struct
default_GetStatus_result :: GetStatus_result
default_GetStatus_result = GetStatus_result{
  getStatus_result_success = (toEnum 0)}
-- | Definition of the AliveSince_args struct
data AliveSince_args = AliveSince_args
 deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable AliveSince_args where
  encode = encode_AliveSince_args
  decode = decode_AliveSince_args
instance Hashable.Hashable AliveSince_args where
  hashWithSalt salt record = salt  
instance DeepSeq.NFData AliveSince_args where
  rnf _record26 =
    ()
instance Arbitrary.Arbitrary AliveSince_args where 
  arbitrary = QuickCheck.elements [AliveSince_args]
-- | Translate a 'AliveSince_args' to a 'Types.ThriftVal'
from_AliveSince_args :: AliveSince_args -> Types.ThriftVal
from_AliveSince_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  []
-- | Write a 'AliveSince_args' with the given 'Thrift.Protocol'
write_AliveSince_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AliveSince_args -> IO ()
write_AliveSince_args oprot record = Thrift.writeVal oprot $ from_AliveSince_args record
-- | Serialize a 'AliveSince_args' in pure code
encode_AliveSince_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AliveSince_args -> BS.ByteString
encode_AliveSince_args oprot record = Thrift.serializeVal oprot $ from_AliveSince_args record
-- | Translate a 'Types.ThriftVal' to a 'AliveSince_args'
to_AliveSince_args :: Types.ThriftVal -> AliveSince_args
to_AliveSince_args (Types.TStruct fields) = AliveSince_args{

  }
to_AliveSince_args _ = error "not a struct"
-- | Read a 'AliveSince_args' struct with the given 'Thrift.Protocol'
read_AliveSince_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO AliveSince_args
read_AliveSince_args iprot = to_AliveSince_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_AliveSince_args)
-- | Deserialize a 'AliveSince_args' in pure code
decode_AliveSince_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> AliveSince_args
decode_AliveSince_args iprot bs = to_AliveSince_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_AliveSince_args) bs
-- | 'TypeMap' for the 'AliveSince_args' struct
typemap_AliveSince_args :: Types.TypeMap
typemap_AliveSince_args = Map.fromList []
-- | Default values for the 'AliveSince_args' struct
default_AliveSince_args :: AliveSince_args
default_AliveSince_args = AliveSince_args{
}
-- | Definition of the AliveSince_result struct
data AliveSince_result = AliveSince_result
  { aliveSince_result_success :: Int.Int64
    -- ^ success field of the AliveSince_result struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable AliveSince_result where
  encode = encode_AliveSince_result
  decode = decode_AliveSince_result
instance Hashable.Hashable AliveSince_result where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` aliveSince_result_success record  
instance DeepSeq.NFData AliveSince_result where
  rnf _record32 =
    DeepSeq.rnf (aliveSince_result_success _record32) `seq`
    ()
instance Arbitrary.Arbitrary AliveSince_result where 
  arbitrary = Monad.liftM AliveSince_result (Arbitrary.arbitrary)
  shrink obj | obj == default_AliveSince_result = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_AliveSince_result{aliveSince_result_success = aliveSince_result_success obj} then Nothing else Just $ default_AliveSince_result{aliveSince_result_success = aliveSince_result_success obj}
    ]
-- | Translate a 'AliveSince_result' to a 'Types.ThriftVal'
from_AliveSince_result :: AliveSince_result -> Types.ThriftVal
from_AliveSince_result record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v35 -> Just (0, ("success",Types.TI64 _v35))) $ aliveSince_result_success record
  ]
-- | Write a 'AliveSince_result' with the given 'Thrift.Protocol'
write_AliveSince_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AliveSince_result -> IO ()
write_AliveSince_result oprot record = Thrift.writeVal oprot $ from_AliveSince_result record
-- | Serialize a 'AliveSince_result' in pure code
encode_AliveSince_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> AliveSince_result -> BS.ByteString
encode_AliveSince_result oprot record = Thrift.serializeVal oprot $ from_AliveSince_result record
-- | Translate a 'Types.ThriftVal' to a 'AliveSince_result'
to_AliveSince_result :: Types.ThriftVal -> AliveSince_result
to_AliveSince_result (Types.TStruct fields) = AliveSince_result{
  aliveSince_result_success = maybe (aliveSince_result_success default_AliveSince_result) (\(_,_val37) -> (case _val37 of {Types.TI64 _val38 -> _val38; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_AliveSince_result _ = error "not a struct"
-- | Read a 'AliveSince_result' struct with the given 'Thrift.Protocol'
read_AliveSince_result :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO AliveSince_result
read_AliveSince_result iprot = to_AliveSince_result <$> Thrift.readVal iprot (Types.T_STRUCT typemap_AliveSince_result)
-- | Deserialize a 'AliveSince_result' in pure code
decode_AliveSince_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> AliveSince_result
decode_AliveSince_result iprot bs = to_AliveSince_result $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_AliveSince_result) bs
-- | 'TypeMap' for the 'AliveSince_result' struct
typemap_AliveSince_result :: Types.TypeMap
typemap_AliveSince_result = Map.fromList [("success",(0,Types.T_I64))]
-- | Default values for the 'AliveSince_result' struct
default_AliveSince_result :: AliveSince_result
default_AliveSince_result = AliveSince_result{
  aliveSince_result_success = 0}
-- | Definition of the GetPid_args struct
data GetPid_args = GetPid_args
 deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetPid_args where
  encode = encode_GetPid_args
  decode = decode_GetPid_args
instance Hashable.Hashable GetPid_args where
  hashWithSalt salt record = salt  
instance DeepSeq.NFData GetPid_args where
  rnf _record39 =
    ()
instance Arbitrary.Arbitrary GetPid_args where 
  arbitrary = QuickCheck.elements [GetPid_args]
-- | Translate a 'GetPid_args' to a 'Types.ThriftVal'
from_GetPid_args :: GetPid_args -> Types.ThriftVal
from_GetPid_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  []
-- | Write a 'GetPid_args' with the given 'Thrift.Protocol'
write_GetPid_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetPid_args -> IO ()
write_GetPid_args oprot record = Thrift.writeVal oprot $ from_GetPid_args record
-- | Serialize a 'GetPid_args' in pure code
encode_GetPid_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetPid_args -> BS.ByteString
encode_GetPid_args oprot record = Thrift.serializeVal oprot $ from_GetPid_args record
-- | Translate a 'Types.ThriftVal' to a 'GetPid_args'
to_GetPid_args :: Types.ThriftVal -> GetPid_args
to_GetPid_args (Types.TStruct fields) = GetPid_args{

  }
to_GetPid_args _ = error "not a struct"
-- | Read a 'GetPid_args' struct with the given 'Thrift.Protocol'
read_GetPid_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetPid_args
read_GetPid_args iprot = to_GetPid_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetPid_args)
-- | Deserialize a 'GetPid_args' in pure code
decode_GetPid_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetPid_args
decode_GetPid_args iprot bs = to_GetPid_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetPid_args) bs
-- | 'TypeMap' for the 'GetPid_args' struct
typemap_GetPid_args :: Types.TypeMap
typemap_GetPid_args = Map.fromList []
-- | Default values for the 'GetPid_args' struct
default_GetPid_args :: GetPid_args
default_GetPid_args = GetPid_args{
}
-- | Definition of the GetPid_result struct
data GetPid_result = GetPid_result
  { getPid_result_success :: Int.Int64
    -- ^ success field of the GetPid_result struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable GetPid_result where
  encode = encode_GetPid_result
  decode = decode_GetPid_result
instance Hashable.Hashable GetPid_result where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` getPid_result_success record  
instance DeepSeq.NFData GetPid_result where
  rnf _record45 =
    DeepSeq.rnf (getPid_result_success _record45) `seq`
    ()
instance Arbitrary.Arbitrary GetPid_result where 
  arbitrary = Monad.liftM GetPid_result (Arbitrary.arbitrary)
  shrink obj | obj == default_GetPid_result = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_GetPid_result{getPid_result_success = getPid_result_success obj} then Nothing else Just $ default_GetPid_result{getPid_result_success = getPid_result_success obj}
    ]
-- | Translate a 'GetPid_result' to a 'Types.ThriftVal'
from_GetPid_result :: GetPid_result -> Types.ThriftVal
from_GetPid_result record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v48 -> Just (0, ("success",Types.TI64 _v48))) $ getPid_result_success record
  ]
-- | Write a 'GetPid_result' with the given 'Thrift.Protocol'
write_GetPid_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetPid_result -> IO ()
write_GetPid_result oprot record = Thrift.writeVal oprot $ from_GetPid_result record
-- | Serialize a 'GetPid_result' in pure code
encode_GetPid_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> GetPid_result -> BS.ByteString
encode_GetPid_result oprot record = Thrift.serializeVal oprot $ from_GetPid_result record
-- | Translate a 'Types.ThriftVal' to a 'GetPid_result'
to_GetPid_result :: Types.ThriftVal -> GetPid_result
to_GetPid_result (Types.TStruct fields) = GetPid_result{
  getPid_result_success = maybe (getPid_result_success default_GetPid_result) (\(_,_val50) -> (case _val50 of {Types.TI64 _val51 -> _val51; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_GetPid_result _ = error "not a struct"
-- | Read a 'GetPid_result' struct with the given 'Thrift.Protocol'
read_GetPid_result :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO GetPid_result
read_GetPid_result iprot = to_GetPid_result <$> Thrift.readVal iprot (Types.T_STRUCT typemap_GetPid_result)
-- | Deserialize a 'GetPid_result' in pure code
decode_GetPid_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> GetPid_result
decode_GetPid_result iprot bs = to_GetPid_result $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_GetPid_result) bs
-- | 'TypeMap' for the 'GetPid_result' struct
typemap_GetPid_result :: Types.TypeMap
typemap_GetPid_result = Map.fromList [("success",(0,Types.T_I64))]
-- | Default values for the 'GetPid_result' struct
default_GetPid_result :: GetPid_result
default_GetPid_result = GetPid_result{
  getPid_result_success = 0}
process_getVersion (seqid, iprot, oprot, handler) = do
  args <- FacebookService.read_GetVersion_args iprot
  (Exception.catch
    (do
      val <- Iface.getVersion handler
      let res = default_GetVersion_result{getVersion_result_success = val}
      Thrift.writeMessage oprot ("getVersion", Types.M_REPLY, seqid) $
        write_GetVersion_result oprot res
      Thrift.tFlush (Thrift.getTransport oprot))
    ((\_ -> do
      Thrift.writeMessage oprot ("getVersion", Types.M_EXCEPTION, seqid) $
        Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN "")
      Thrift.tFlush (Thrift.getTransport oprot)) :: Exception.SomeException -> IO ()))
process_getStatus (seqid, iprot, oprot, handler) = do
  args <- FacebookService.read_GetStatus_args iprot
  (Exception.catch
    (do
      val <- Iface.getStatus handler
      let res = default_GetStatus_result{getStatus_result_success = val}
      Thrift.writeMessage oprot ("getStatus", Types.M_REPLY, seqid) $
        write_GetStatus_result oprot res
      Thrift.tFlush (Thrift.getTransport oprot))
    ((\_ -> do
      Thrift.writeMessage oprot ("getStatus", Types.M_EXCEPTION, seqid) $
        Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN "")
      Thrift.tFlush (Thrift.getTransport oprot)) :: Exception.SomeException -> IO ()))
process_aliveSince (seqid, iprot, oprot, handler) = do
  args <- FacebookService.read_AliveSince_args iprot
  (Exception.catch
    (do
      val <- Iface.aliveSince handler
      let res = default_AliveSince_result{aliveSince_result_success = val}
      Thrift.writeMessage oprot ("aliveSince", Types.M_REPLY, seqid) $
        write_AliveSince_result oprot res
      Thrift.tFlush (Thrift.getTransport oprot))
    ((\_ -> do
      Thrift.writeMessage oprot ("aliveSince", Types.M_EXCEPTION, seqid) $
        Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN "")
      Thrift.tFlush (Thrift.getTransport oprot)) :: Exception.SomeException -> IO ()))
process_getPid (seqid, iprot, oprot, handler) = do
  args <- FacebookService.read_GetPid_args iprot
  (Exception.catch
    (do
      val <- Iface.getPid handler
      let res = default_GetPid_result{getPid_result_success = val}
      Thrift.writeMessage oprot ("getPid", Types.M_REPLY, seqid) $
        write_GetPid_result oprot res
      Thrift.tFlush (Thrift.getTransport oprot))
    ((\_ -> do
      Thrift.writeMessage oprot ("getPid", Types.M_EXCEPTION, seqid) $
        Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN "")
      Thrift.tFlush (Thrift.getTransport oprot)) :: Exception.SomeException -> IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "getVersion" -> process_getVersion (seqid,iprot,oprot,handler)
  "getStatus" -> process_getStatus (seqid,iprot,oprot,handler)
  "aliveSince" -> process_aliveSince (seqid,iprot,oprot,handler)
  "getPid" -> process_getPid (seqid,iprot,oprot,handler)
  _ -> do
    _ <- Thrift.readVal iprot (Types.T_STRUCT Map.empty)
    Thrift.writeMessage oprot (name,Types.M_EXCEPTION,seqid) $
      Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN_METHOD ("Unknown function " ++ LT.unpack name))
    Thrift.tFlush (Thrift.getTransport oprot)
process handler (iprot, oprot) =
  Thrift.readMessage iprot (proc_ handler (iprot,oprot)) >> return True
