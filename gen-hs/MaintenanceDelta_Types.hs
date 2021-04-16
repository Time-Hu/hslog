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

module MaintenanceDelta_Types where
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

import qualified Maintenance_Types as Maintenance_Types


-- | Definition of the MaintenanceDelta struct
data MaintenanceDelta = MaintenanceDelta
  { maintenanceDelta_apply_maintenances :: (Vector.Vector Maintenance_Types.MaintenanceDefinition)
    -- ^ apply_maintenances field of the MaintenanceDelta struct
  , maintenanceDelta_remove_maintenances :: Maintenance_Types.RemoveMaintenancesRequest
    -- ^ remove_maintenances field of the MaintenanceDelta struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable MaintenanceDelta where
  encode = encode_MaintenanceDelta
  decode = decode_MaintenanceDelta
instance Hashable.Hashable MaintenanceDelta where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` maintenanceDelta_apply_maintenances record   `Hashable.hashWithSalt` maintenanceDelta_remove_maintenances record  
instance DeepSeq.NFData MaintenanceDelta where
  rnf _record0 =
    DeepSeq.rnf (maintenanceDelta_apply_maintenances _record0) `seq`
    DeepSeq.rnf (maintenanceDelta_remove_maintenances _record0) `seq`
    ()
instance Arbitrary.Arbitrary MaintenanceDelta where 
  arbitrary = Monad.liftM MaintenanceDelta (Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
  shrink obj | obj == default_MaintenanceDelta = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_MaintenanceDelta{maintenanceDelta_apply_maintenances = maintenanceDelta_apply_maintenances obj} then Nothing else Just $ default_MaintenanceDelta{maintenanceDelta_apply_maintenances = maintenanceDelta_apply_maintenances obj}
    , if obj == default_MaintenanceDelta{maintenanceDelta_remove_maintenances = maintenanceDelta_remove_maintenances obj} then Nothing else Just $ default_MaintenanceDelta{maintenanceDelta_remove_maintenances = maintenanceDelta_remove_maintenances obj}
    ]
-- | Translate a 'MaintenanceDelta' to a 'Types.ThriftVal'
from_MaintenanceDelta :: MaintenanceDelta -> Types.ThriftVal
from_MaintenanceDelta record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("apply_maintenances",Types.TList (Types.T_STRUCT Maintenance_Types.typemap_MaintenanceDefinition) $ map (\_v5 -> Maintenance_Types.from_MaintenanceDefinition _v5) $ Vector.toList _v3))) $ maintenanceDelta_apply_maintenances record
  , (\_v3 -> Just (2, ("remove_maintenances",Maintenance_Types.from_RemoveMaintenancesRequest _v3))) $ maintenanceDelta_remove_maintenances record
  ]
-- | Write a 'MaintenanceDelta' with the given 'Thrift.Protocol'
write_MaintenanceDelta :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceDelta -> IO ()
write_MaintenanceDelta oprot record = Thrift.writeVal oprot $ from_MaintenanceDelta record
-- | Serialize a 'MaintenanceDelta' in pure code
encode_MaintenanceDelta :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MaintenanceDelta -> BS.ByteString
encode_MaintenanceDelta oprot record = Thrift.serializeVal oprot $ from_MaintenanceDelta record
-- | Translate a 'Types.ThriftVal' to a 'MaintenanceDelta'
to_MaintenanceDelta :: Types.ThriftVal -> MaintenanceDelta
to_MaintenanceDelta (Types.TStruct fields) = MaintenanceDelta{
  maintenanceDelta_apply_maintenances = maybe (maintenanceDelta_apply_maintenances default_MaintenanceDelta) (\(_,_val7) -> (case _val7 of {Types.TList _ _val8 -> (Vector.fromList $ map (\_v9 -> (case _v9 of {Types.TStruct _val10 -> (Maintenance_Types.to_MaintenanceDefinition (Types.TStruct _val10)); _ -> error "wrong type"})) _val8); _ -> error "wrong type"})) (Map.lookup (1) fields),
  maintenanceDelta_remove_maintenances = maybe (maintenanceDelta_remove_maintenances default_MaintenanceDelta) (\(_,_val7) -> (case _val7 of {Types.TStruct _val11 -> (Maintenance_Types.to_RemoveMaintenancesRequest (Types.TStruct _val11)); _ -> error "wrong type"})) (Map.lookup (2) fields)
  }
to_MaintenanceDelta _ = error "not a struct"
-- | Read a 'MaintenanceDelta' struct with the given 'Thrift.Protocol'
read_MaintenanceDelta :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO MaintenanceDelta
read_MaintenanceDelta iprot = to_MaintenanceDelta <$> Thrift.readVal iprot (Types.T_STRUCT typemap_MaintenanceDelta)
-- | Deserialize a 'MaintenanceDelta' in pure code
decode_MaintenanceDelta :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> MaintenanceDelta
decode_MaintenanceDelta iprot bs = to_MaintenanceDelta $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_MaintenanceDelta) bs
-- | 'TypeMap' for the 'MaintenanceDelta' struct
typemap_MaintenanceDelta :: Types.TypeMap
typemap_MaintenanceDelta = Map.fromList [("apply_maintenances",(1,(Types.T_LIST (Types.T_STRUCT Maintenance_Types.typemap_MaintenanceDefinition)))),("remove_maintenances",(2,(Types.T_STRUCT Maintenance_Types.typemap_RemoveMaintenancesRequest)))]
-- | Default values for the 'MaintenanceDelta' struct
default_MaintenanceDelta :: MaintenanceDelta
default_MaintenanceDelta = MaintenanceDelta{
  maintenanceDelta_apply_maintenances = Vector.empty,
  maintenanceDelta_remove_maintenances = Maintenance_Types.default_RemoveMaintenancesRequest}