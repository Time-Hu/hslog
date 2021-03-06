-----------------------------------------------------------------
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-overlapping-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns#-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Exceptions.Types
       (NodeNotReady(NodeNotReady, nodeNotReady_message),
        StaleVersion(StaleVersion, staleVersion_message,
                     staleVersion_server_version),
        NotSupported(NotSupported, notSupported_message),
        OperationError(OperationError, operationError_message,
                       operationError_error_code),
        InvalidRequest(InvalidRequest, invalidRequest_message),
        MaintenanceClash(MaintenanceClash, maintenanceClash_message),
        MaintenanceMatchError(MaintenanceMatchError,
                              maintenanceMatchError_message),
        NodesConfigurationManagerError(NodesConfigurationManagerError,
                                       nodesConfigurationManagerError_message,
                                       nodesConfigurationManagerError_error_code))
       where
import qualified Common.Types as Common
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad
import qualified Control.Monad.ST.Trans as ST
import qualified Control.Monad.Trans.Class as Trans
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson
import qualified Data.Default as Default
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import qualified Data.List as List
import qualified Data.Ord as Ord
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Prelude as Prelude
import qualified Thrift.Binary.Parser as Parser
import qualified Thrift.CodegenTypesOnly as Thrift
import Control.Applicative ((<|>), (*>), (<*))
import Data.Aeson ((.:), (.:?), (.=), (.!=))
import Data.Monoid ((<>))
import Prelude ((.), (<$>), (<*>), (>>=), (==), (/=), (<), (++))

newtype NodeNotReady = NodeNotReady{nodeNotReady_message ::
                                    Text.Text}
                       deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON NodeNotReady where
  toJSON (NodeNotReady __field__message)
    = Aeson.object ("message" .= __field__message : Prelude.mempty)

instance Thrift.ThriftStruct NodeNotReady where
  buildStruct _proxy (NodeNotReady __field__message)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             Prelude.pure (NodeNotReady __val__message)
              _idMap = HashMap.fromList [("message", 1)]
            _parse 0)

instance DeepSeq.NFData NodeNotReady where
  rnf (NodeNotReady __field__message)
    = DeepSeq.rnf __field__message `Prelude.seq` ()

instance Default.Default NodeNotReady where
  def = NodeNotReady ""

instance Hashable.Hashable NodeNotReady where
  hashWithSalt __salt (NodeNotReady _message)
    = Hashable.hashWithSalt __salt _message

instance Exception.Exception NodeNotReady

data StaleVersion = StaleVersion{staleVersion_message :: Text.Text,
                                 staleVersion_server_version :: Common.Unsigned64}
                    deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON StaleVersion where
  toJSON (StaleVersion __field__message __field__server_version)
    = Aeson.object
        ("message" .= __field__message :
           "server_version" .= __field__server_version : Prelude.mempty)

instance Thrift.ThriftStruct StaleVersion where
  buildStruct _proxy
    (StaleVersion __field__message __field__server_version)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           :
           Thrift.genField _proxy "server_version" (Thrift.getI64Type _proxy)
             2
             1
             (Thrift.genI64 _proxy __field__server_version)
             : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            __field__server_version <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI64Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI64
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__server_version
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             !__val__server_version <- ST.readSTRef
                                                                         __field__server_version
                                             Prelude.pure
                                               (StaleVersion __val__message __val__server_version)
              _idMap = HashMap.fromList [("message", 1), ("server_version", 2)]
            _parse 0)

instance DeepSeq.NFData StaleVersion where
  rnf (StaleVersion __field__message __field__server_version)
    = DeepSeq.rnf __field__message `Prelude.seq`
        DeepSeq.rnf __field__server_version `Prelude.seq` ()

instance Default.Default StaleVersion where
  def = StaleVersion "" Default.def

instance Hashable.Hashable StaleVersion where
  hashWithSalt __salt (StaleVersion _message _server_version)
    = Hashable.hashWithSalt (Hashable.hashWithSalt __salt _message)
        _server_version

instance Exception.Exception StaleVersion

newtype NotSupported = NotSupported{notSupported_message ::
                                    Text.Text}
                       deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON NotSupported where
  toJSON (NotSupported __field__message)
    = Aeson.object ("message" .= __field__message : Prelude.mempty)

instance Thrift.ThriftStruct NotSupported where
  buildStruct _proxy (NotSupported __field__message)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             Prelude.pure (NotSupported __val__message)
              _idMap = HashMap.fromList [("message", 1)]
            _parse 0)

instance DeepSeq.NFData NotSupported where
  rnf (NotSupported __field__message)
    = DeepSeq.rnf __field__message `Prelude.seq` ()

instance Default.Default NotSupported where
  def = NotSupported ""

instance Hashable.Hashable NotSupported where
  hashWithSalt __salt (NotSupported _message)
    = Hashable.hashWithSalt __salt _message

instance Exception.Exception NotSupported

data OperationError = OperationError{operationError_message ::
                                     Text.Text,
                                     operationError_error_code :: Prelude.Maybe Int.Int32}
                      deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON OperationError where
  toJSON (OperationError __field__message __field__error_code)
    = Aeson.object
        ("message" .= __field__message :
           Prelude.maybe Prelude.id ((:) . ("error_code" .=))
             __field__error_code
             Prelude.mempty)

instance Thrift.ThriftStruct OperationError where
  buildStruct _proxy
    (OperationError __field__message __field__error_code)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           :
           case __field__error_code of
             Prelude.Just _val -> Thrift.genFieldPrim _proxy "error_code"
                                    (Thrift.getI32Type _proxy)
                                    2
                                    1
                                    (Thrift.genI32Prim _proxy)
                                    _val
                                    : []
             Prelude.Nothing -> [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            __field__error_code <- ST.newSTRef Prelude.Nothing
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__error_code
                                                                          (Prelude.Just _val)
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             !__val__error_code <- ST.readSTRef __field__error_code
                                             Prelude.pure
                                               (OperationError __val__message __val__error_code)
              _idMap = HashMap.fromList [("message", 1), ("error_code", 2)]
            _parse 0)

instance DeepSeq.NFData OperationError where
  rnf (OperationError __field__message __field__error_code)
    = DeepSeq.rnf __field__message `Prelude.seq`
        DeepSeq.rnf __field__error_code `Prelude.seq` ()

instance Default.Default OperationError where
  def = OperationError "" Prelude.Nothing

instance Hashable.Hashable OperationError where
  hashWithSalt __salt (OperationError _message _error_code)
    = Hashable.hashWithSalt (Hashable.hashWithSalt __salt _message)
        _error_code

instance Exception.Exception OperationError

newtype InvalidRequest = InvalidRequest{invalidRequest_message ::
                                        Text.Text}
                         deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON InvalidRequest where
  toJSON (InvalidRequest __field__message)
    = Aeson.object ("message" .= __field__message : Prelude.mempty)

instance Thrift.ThriftStruct InvalidRequest where
  buildStruct _proxy (InvalidRequest __field__message)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             Prelude.pure (InvalidRequest __val__message)
              _idMap = HashMap.fromList [("message", 1)]
            _parse 0)

instance DeepSeq.NFData InvalidRequest where
  rnf (InvalidRequest __field__message)
    = DeepSeq.rnf __field__message `Prelude.seq` ()

instance Default.Default InvalidRequest where
  def = InvalidRequest ""

instance Hashable.Hashable InvalidRequest where
  hashWithSalt __salt (InvalidRequest _message)
    = Hashable.hashWithSalt __salt _message

instance Exception.Exception InvalidRequest

newtype MaintenanceClash = MaintenanceClash{maintenanceClash_message
                                            :: Text.Text}
                           deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON MaintenanceClash where
  toJSON (MaintenanceClash __field__message)
    = Aeson.object ("message" .= __field__message : Prelude.mempty)

instance Thrift.ThriftStruct MaintenanceClash where
  buildStruct _proxy (MaintenanceClash __field__message)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             Prelude.pure (MaintenanceClash __val__message)
              _idMap = HashMap.fromList [("message", 1)]
            _parse 0)

instance DeepSeq.NFData MaintenanceClash where
  rnf (MaintenanceClash __field__message)
    = DeepSeq.rnf __field__message `Prelude.seq` ()

instance Default.Default MaintenanceClash where
  def = MaintenanceClash ""

instance Hashable.Hashable MaintenanceClash where
  hashWithSalt __salt (MaintenanceClash _message)
    = Hashable.hashWithSalt __salt _message

instance Exception.Exception MaintenanceClash

newtype MaintenanceMatchError = MaintenanceMatchError{maintenanceMatchError_message
                                                      :: Text.Text}
                                deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON MaintenanceMatchError where
  toJSON (MaintenanceMatchError __field__message)
    = Aeson.object ("message" .= __field__message : Prelude.mempty)

instance Thrift.ThriftStruct MaintenanceMatchError where
  buildStruct _proxy (MaintenanceMatchError __field__message)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             Prelude.pure (MaintenanceMatchError __val__message)
              _idMap = HashMap.fromList [("message", 1)]
            _parse 0)

instance DeepSeq.NFData MaintenanceMatchError where
  rnf (MaintenanceMatchError __field__message)
    = DeepSeq.rnf __field__message `Prelude.seq` ()

instance Default.Default MaintenanceMatchError where
  def = MaintenanceMatchError ""

instance Hashable.Hashable MaintenanceMatchError where
  hashWithSalt __salt (MaintenanceMatchError _message)
    = Hashable.hashWithSalt __salt _message

instance Exception.Exception MaintenanceMatchError

data NodesConfigurationManagerError = NodesConfigurationManagerError{nodesConfigurationManagerError_message
                                                                     :: Text.Text,
                                                                     nodesConfigurationManagerError_error_code
                                                                     :: Prelude.Maybe Int.Int32}
                                      deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON NodesConfigurationManagerError where
  toJSON
    (NodesConfigurationManagerError __field__message
       __field__error_code)
    = Aeson.object
        ("message" .= __field__message :
           Prelude.maybe Prelude.id ((:) . ("error_code" .=))
             __field__error_code
             Prelude.mempty)

instance Thrift.ThriftStruct NodesConfigurationManagerError where
  buildStruct _proxy
    (NodesConfigurationManagerError __field__message
       __field__error_code)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "message" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__message)
           :
           case __field__error_code of
             Prelude.Just _val -> Thrift.genFieldPrim _proxy "error_code"
                                    (Thrift.getI32Type _proxy)
                                    2
                                    1
                                    (Thrift.genI32Prim _proxy)
                                    _val
                                    : []
             Prelude.Nothing -> [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__message <- ST.newSTRef ""
            __field__error_code <- ST.newSTRef Prelude.Nothing
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__message
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__error_code
                                                                          (Prelude.Just _val)
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__message <- ST.readSTRef
                                                                  __field__message
                                             !__val__error_code <- ST.readSTRef __field__error_code
                                             Prelude.pure
                                               (NodesConfigurationManagerError __val__message
                                                  __val__error_code)
              _idMap = HashMap.fromList [("message", 1), ("error_code", 2)]
            _parse 0)

instance DeepSeq.NFData NodesConfigurationManagerError where
  rnf
    (NodesConfigurationManagerError __field__message
       __field__error_code)
    = DeepSeq.rnf __field__message `Prelude.seq`
        DeepSeq.rnf __field__error_code `Prelude.seq` ()

instance Default.Default NodesConfigurationManagerError where
  def = NodesConfigurationManagerError "" Prelude.Nothing

instance Hashable.Hashable NodesConfigurationManagerError where
  hashWithSalt __salt
    (NodesConfigurationManagerError _message _error_code)
    = Hashable.hashWithSalt (Hashable.hashWithSalt __salt _message)
        _error_code

instance Exception.Exception NodesConfigurationManagerError