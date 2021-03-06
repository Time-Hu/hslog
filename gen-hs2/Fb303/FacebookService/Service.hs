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
{-# LANGUAGE GADTs #-}
module Fb303.FacebookService.Service
       (FacebookServiceCommand(..), reqName', reqParser', respWriter',
        onewayFunctions')
       where
import qualified Control.Exception as Exception
import qualified Control.Monad.ST.Trans as ST
import qualified Control.Monad.Trans.Class as Trans
import qualified Data.ByteString.Builder as Builder
import qualified Data.Default as Default
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Int as Int
import qualified Data.Proxy as Proxy
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Fb303.Types as Types
import qualified Prelude as Prelude
import qualified Thrift.Binary.Parser as Parser
import qualified Thrift.Codegen as Thrift
import qualified Thrift.Processor as Thrift
import qualified Thrift.Protocol.ApplicationException.Types
       as Thrift
import Control.Applicative ((<*), (*>))
import Data.Monoid ((<>))
import Prelude ((<$>), (<*>), (++), (.), (==))

data FacebookServiceCommand a where
  GetVersion :: FacebookServiceCommand Text.Text
  GetStatus :: FacebookServiceCommand Types.Fb_status
  AliveSince :: FacebookServiceCommand Int.Int64
  GetPid :: FacebookServiceCommand Int.Int64

instance Thrift.Processor FacebookServiceCommand where
  reqName = reqName'
  reqParser = reqParser'
  respWriter = respWriter'
  onewayFns _ = onewayFunctions'

reqName' :: FacebookServiceCommand a -> Text.Text
reqName' GetVersion = "getVersion"
reqName' GetStatus = "getStatus"
reqName' AliveSince = "aliveSince"
reqName' GetPid = "getPid"

reqParser' ::
             Thrift.Protocol p =>
             Proxy.Proxy p ->
               Text.Text -> Parser.Parser (Thrift.Some FacebookServiceCommand)
reqParser' _proxy "getVersion"
  = ST.runSTT
      (do Prelude.return ()
          let
            _parse _lastId
              = do _fieldBegin <- Trans.lift
                                    (Thrift.parseFieldBegin _proxy _lastId _idMap)
                   case _fieldBegin of
                     Thrift.FieldBegin _type _id _bool -> do case _id of
                                                               _ -> Trans.lift
                                                                      (Thrift.parseSkip _proxy _type
                                                                         (Prelude.Just _bool))
                                                             _parse _id
                     Thrift.FieldEnd -> do Prelude.pure (Thrift.Some GetVersion)
            _idMap = HashMap.fromList []
          _parse 0)
reqParser' _proxy "getStatus"
  = ST.runSTT
      (do Prelude.return ()
          let
            _parse _lastId
              = do _fieldBegin <- Trans.lift
                                    (Thrift.parseFieldBegin _proxy _lastId _idMap)
                   case _fieldBegin of
                     Thrift.FieldBegin _type _id _bool -> do case _id of
                                                               _ -> Trans.lift
                                                                      (Thrift.parseSkip _proxy _type
                                                                         (Prelude.Just _bool))
                                                             _parse _id
                     Thrift.FieldEnd -> do Prelude.pure (Thrift.Some GetStatus)
            _idMap = HashMap.fromList []
          _parse 0)
reqParser' _proxy "aliveSince"
  = ST.runSTT
      (do Prelude.return ()
          let
            _parse _lastId
              = do _fieldBegin <- Trans.lift
                                    (Thrift.parseFieldBegin _proxy _lastId _idMap)
                   case _fieldBegin of
                     Thrift.FieldBegin _type _id _bool -> do case _id of
                                                               _ -> Trans.lift
                                                                      (Thrift.parseSkip _proxy _type
                                                                         (Prelude.Just _bool))
                                                             _parse _id
                     Thrift.FieldEnd -> do Prelude.pure (Thrift.Some AliveSince)
            _idMap = HashMap.fromList []
          _parse 0)
reqParser' _proxy "getPid"
  = ST.runSTT
      (do Prelude.return ()
          let
            _parse _lastId
              = do _fieldBegin <- Trans.lift
                                    (Thrift.parseFieldBegin _proxy _lastId _idMap)
                   case _fieldBegin of
                     Thrift.FieldBegin _type _id _bool -> do case _id of
                                                               _ -> Trans.lift
                                                                      (Thrift.parseSkip _proxy _type
                                                                         (Prelude.Just _bool))
                                                             _parse _id
                     Thrift.FieldEnd -> do Prelude.pure (Thrift.Some GetPid)
            _idMap = HashMap.fromList []
          _parse 0)
reqParser' _ funName
  = Prelude.errorWithoutStackTrace
      ("unknown function call: " ++ Text.unpack funName)

respWriter' ::
              Thrift.Protocol p =>
              Proxy.Proxy p ->
                Int.Int32 ->
                  FacebookServiceCommand a ->
                    Prelude.Either Exception.SomeException a ->
                      (Builder.Builder,
                       Prelude.Maybe (Exception.SomeException, Thrift.Blame))
respWriter' _proxy _seqNum GetVersion{} _r
  = (Thrift.genMsgBegin _proxy "getVersion" _msgType _seqNum <>
       _msgBody
       <> Thrift.genMsgEnd _proxy,
     _msgException)
  where
    (_msgType, _msgBody, _msgException)
      = case _r of
          Prelude.Left _ex | Prelude.Just
                               _e@Thrift.ApplicationException{} <- Exception.fromException _ex
                             ->
                             (3, Thrift.buildStruct _proxy _e,
                              Prelude.Just (_ex, Thrift.ServerError))
                           | Prelude.otherwise ->
                             let _e
                                   = Thrift.ApplicationException (Text.pack (Prelude.show _ex))
                                       Thrift.ApplicationExceptionType_InternalError
                               in
                               (3, Thrift.buildStruct _proxy _e,
                                Prelude.Just (Exception.toException _e, Thrift.ServerError))
          Prelude.Right _result -> (2,
                                    Thrift.genStruct _proxy
                                      [Thrift.genField _proxy "" (Thrift.getStringType _proxy) 0 0
                                         (Thrift.genText _proxy _result)],
                                    Prelude.Nothing)
respWriter' _proxy _seqNum GetStatus{} _r
  = (Thrift.genMsgBegin _proxy "getStatus" _msgType _seqNum <>
       _msgBody
       <> Thrift.genMsgEnd _proxy,
     _msgException)
  where
    (_msgType, _msgBody, _msgException)
      = case _r of
          Prelude.Left _ex | Prelude.Just
                               _e@Thrift.ApplicationException{} <- Exception.fromException _ex
                             ->
                             (3, Thrift.buildStruct _proxy _e,
                              Prelude.Just (_ex, Thrift.ServerError))
                           | Prelude.otherwise ->
                             let _e
                                   = Thrift.ApplicationException (Text.pack (Prelude.show _ex))
                                       Thrift.ApplicationExceptionType_InternalError
                               in
                               (3, Thrift.buildStruct _proxy _e,
                                Prelude.Just (Exception.toException _e, Thrift.ServerError))
          Prelude.Right _result -> (2,
                                    Thrift.genStruct _proxy
                                      [Thrift.genField _proxy "" (Thrift.getI32Type _proxy) 0 0
                                         ((Thrift.genI32 _proxy . Prelude.fromIntegral .
                                             Thrift.fromThriftEnum)
                                            _result)],
                                    Prelude.Nothing)
respWriter' _proxy _seqNum AliveSince{} _r
  = (Thrift.genMsgBegin _proxy "aliveSince" _msgType _seqNum <>
       _msgBody
       <> Thrift.genMsgEnd _proxy,
     _msgException)
  where
    (_msgType, _msgBody, _msgException)
      = case _r of
          Prelude.Left _ex | Prelude.Just
                               _e@Thrift.ApplicationException{} <- Exception.fromException _ex
                             ->
                             (3, Thrift.buildStruct _proxy _e,
                              Prelude.Just (_ex, Thrift.ServerError))
                           | Prelude.otherwise ->
                             let _e
                                   = Thrift.ApplicationException (Text.pack (Prelude.show _ex))
                                       Thrift.ApplicationExceptionType_InternalError
                               in
                               (3, Thrift.buildStruct _proxy _e,
                                Prelude.Just (Exception.toException _e, Thrift.ServerError))
          Prelude.Right _result -> (2,
                                    Thrift.genStruct _proxy
                                      [Thrift.genFieldPrim _proxy "" (Thrift.getI64Type _proxy) 0 0
                                         (Thrift.genI64Prim _proxy)
                                         _result],
                                    Prelude.Nothing)
respWriter' _proxy _seqNum GetPid{} _r
  = (Thrift.genMsgBegin _proxy "getPid" _msgType _seqNum <> _msgBody
       <> Thrift.genMsgEnd _proxy,
     _msgException)
  where
    (_msgType, _msgBody, _msgException)
      = case _r of
          Prelude.Left _ex | Prelude.Just
                               _e@Thrift.ApplicationException{} <- Exception.fromException _ex
                             ->
                             (3, Thrift.buildStruct _proxy _e,
                              Prelude.Just (_ex, Thrift.ServerError))
                           | Prelude.otherwise ->
                             let _e
                                   = Thrift.ApplicationException (Text.pack (Prelude.show _ex))
                                       Thrift.ApplicationExceptionType_InternalError
                               in
                               (3, Thrift.buildStruct _proxy _e,
                                Prelude.Just (Exception.toException _e, Thrift.ServerError))
          Prelude.Right _result -> (2,
                                    Thrift.genStruct _proxy
                                      [Thrift.genFieldPrim _proxy "" (Thrift.getI64Type _proxy) 0 0
                                         (Thrift.genI64Prim _proxy)
                                         _result],
                                    Prelude.Nothing)

onewayFunctions' :: [Text.Text]
onewayFunctions' = []