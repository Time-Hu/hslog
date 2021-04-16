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
module Facebook.Logdevice.Thrift.AdminCommand.AdminCommands.Types
       (AdminCommandRequest(AdminCommandRequest,
                            adminCommandRequest_request),
        AdminCommandResponse(AdminCommandResponse,
                             adminCommandResponse_response))
       where
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Monad as Monad
import qualified Control.Monad.ST.Trans as ST
import qualified Control.Monad.Trans.Class as Trans
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson
import qualified Data.Default as Default
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Hashable as Hashable
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

newtype AdminCommandRequest = AdminCommandRequest{adminCommandRequest_request
                                                  :: Text.Text}
                              deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON AdminCommandRequest where
  toJSON (AdminCommandRequest __field__request)
    = Aeson.object ("request" .= __field__request : Prelude.mempty)

instance Thrift.ThriftStruct AdminCommandRequest where
  buildStruct _proxy (AdminCommandRequest __field__request)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "request" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__request)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__request <- ST.newSTRef ""
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
                                                                          __field__request
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__request <- ST.readSTRef
                                                                  __field__request
                                             Prelude.pure (AdminCommandRequest __val__request)
              _idMap = HashMap.fromList [("request", 1)]
            _parse 0)

instance DeepSeq.NFData AdminCommandRequest where
  rnf (AdminCommandRequest __field__request)
    = DeepSeq.rnf __field__request `Prelude.seq` ()

instance Default.Default AdminCommandRequest where
  def = AdminCommandRequest ""

instance Hashable.Hashable AdminCommandRequest where
  hashWithSalt __salt (AdminCommandRequest _request)
    = Hashable.hashWithSalt __salt _request

newtype AdminCommandResponse = AdminCommandResponse{adminCommandResponse_response
                                                    :: Text.Text}
                               deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON AdminCommandResponse where
  toJSON (AdminCommandResponse __field__response)
    = Aeson.object ("response" .= __field__response : Prelude.mempty)

instance Thrift.ThriftStruct AdminCommandResponse where
  buildStruct _proxy (AdminCommandResponse __field__response)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "response" (Thrift.getStringType _proxy) 1
           0
           (Thrift.genText _proxy __field__response)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__response <- ST.newSTRef ""
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
                                                                          __field__response
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__response <- ST.readSTRef
                                                                   __field__response
                                             Prelude.pure (AdminCommandResponse __val__response)
              _idMap = HashMap.fromList [("response", 1)]
            _parse 0)

instance DeepSeq.NFData AdminCommandResponse where
  rnf (AdminCommandResponse __field__response)
    = DeepSeq.rnf __field__response `Prelude.seq` ()

instance Default.Default AdminCommandResponse where
  def = AdminCommandResponse ""

instance Hashable.Hashable AdminCommandResponse where
  hashWithSalt __salt (AdminCommandResponse _response)
    = Hashable.hashWithSalt __salt _response