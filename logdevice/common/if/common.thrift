/**
 * Copyright (c) 2018-present, Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


/**
 * Because thrift doesn't have a u64.
 */
typedef i64 /* (cpp.type = "std::uint64_t") */ unsigned64
typedef string MaintenanceGroupID

/**
 * A Socket object is the identifier for a specific node on the cluster from the
 * Admin API point of view. This is basically a hostname and port pair. You can
 * replace the hostname with IP as long as you do this consistently.
 * You can also use the unix-socket path instead of the host/port pair if you
 * are running LogDevice in a no-network mode.
 */
enum SocketAddressFamily {
  INET = 1, /** IPv4 or IPv6 address */
  UNIX = 2, /** Unix socket address */
}

enum ClientNetworkPriority {
  LOW= 0,
  MEDIUM=1,
  HIGH=2
}

struct SocketAddress {
  1: SocketAddressFamily address_family = SocketAddressFamily.INET,
  /**
   * This contains the unix_socket path if address_family is set to UNIX
   */
  2: optional string address,
  /**
   * A port should be uint16_t but such a type does not exist in thrift
   * port will be unset or (-1) if this points to a unix socket or we are only
   * interested in the address value.
   */
  3: optional i32 port = -1,
}

typedef i64 Timestamp /** UNIX time in milliseconds */
typedef i16 NodeIndex /** node_index_t */
typedef i16 ShardIndex /** shard_index_t */

const ShardIndex ALL_SHARDS = -1 /** Indicates all shards in a node */

/**
 * This is an identifier for a node, it can locate a node by either the
 * node_index, socket address or name. If this struct is returned by AdminAPI
 * it is guaranteed that node_index field is set.
 */
struct NodeID {
  1: optional NodeIndex node_index,
  2: optional SocketAddress address,
  3: optional string name,
}

/**
 * This data structure is used to represent one or (all) shards on a storage
 * node. This is typically used in the low-level APIs of the Administrative API.
 */
struct ShardID {
  1: NodeID node,
  /**
   * this can be ALL_SHARDS which means all shards in a node.
   */
  2: ShardIndex shard_index = ALL_SHARDS,
}

/**
 * An ordered list of shards that a record can be stored onto.
 */
typedef list<ShardID> StorageSet
/**
 * unordered set of shard. This should be a set<> but set of non
 * int/string/binary/enums are not portable in some languages.
 */
typedef list<ShardID> ShardSet

/**
 * Role is what defines if this node is a storage node or a sequencer node,
 * this is used as a mask in `NodeConfig` so a node can have on or more roles.
 * It's important that you keep the values of this enum in distinct bits in i16
 * range
 */
enum Role {
  STORAGE = 1,
  SEQUENCER = 2,
}

struct Addresses {
  /**
   * The socket address at which we expect gossip to use.
   */
  1: optional SocketAddress gossip;
  /**
   * The socket address for SSL (data) connections to the server.
   */
  2: optional SocketAddress ssl;
  /**
   * The socket address for admin connections to the server.
   */
  3: optional SocketAddress admin;
  /**
   * The socket address for server-to-server connections.
   */
  4: optional SocketAddress server_to_server;
  /**
   * The socket address for server-to-server Thrift API.
   */
  5: optional SocketAddress server_thrift_api;
  /**
   * The socket address for client-facing Thrift API.
   */
  6: optional SocketAddress client_thrift_api;
  /**
   * Addresses per network priority.
   */
  7: map<ClientNetworkPriority, SocketAddress>
    addresses_per_priority;
}

/**
 * Defines the different location scopes that logdevice recognizes
 */
enum LocationScope {
  NODE = 1,
  RACK = 2,
  ROW = 3,
  CLUSTER = 4,
  DATA_CENTER = 5,
  REGION = 6,
  ROOT = 99,
}

/**
 * Replication property is how many copies per Location scope for the various
 * scopes
 */
typedef map<LocationScope, i32> ReplicationProperty // replication per scope
typedef map<LocationScope, string> Location // location tag per scope
