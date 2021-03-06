/**
 * Copyright (c) 2018-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

include "/Workplace/logth/hslog/logdevice/common/membership/Membership.thrift"
include "/Workplace/logth/hslog/logdevice/common/if/common.thrift"


typedef byte (cpp2.type = "std::uint8_t") u8
typedef i16 (cpp2.type = "std::uint16_t") u16
typedef i32 (cpp2.type = "std::uint32_t") u32
typedef i64 (cpp2.type = "std::uint64_t") u64

typedef u16 node_idx
typedef common.ClientNetworkPriority ClientNetworkPriority

 struct NodeServiceDiscovery {
  1: string default_client_data_address;
  2: optional string gossip_address;
  3: optional string ssl_address;
  4: optional string location;
  5: u64 roles;
  // 6: string hostname;
  7: string name;
  8: optional string admin_address;
  9: u64 version;
  10: optional string server_to_server_address;
  11: map<string, string> tags;
  12: optional string server_thrift_api_address;
  13: optional string client_thrift_api_address;
  14: map<ClientNetworkPriority, string> addresses_per_priority;
}

struct ServiceDiscoveryConfig {
   // A map from a
   1: map<node_idx, NodeServiceDiscovery> node_states;
}

struct SequencerNodeAttribute {
}

struct SequencerAttributeConfig {
   1: map<node_idx, SequencerNodeAttribute> node_states;
}

struct StorageNodeAttribute {
  1: double capacity;
  2: i16 num_shards;
  3: u16 generation;
  4: bool exclude_from_nodesets;
}

struct StorageAttributeConfig {
  1: map<node_idx, StorageNodeAttribute> node_states;
}

struct SequencerConfig {
  1: SequencerAttributeConfig attr_conf;
  2: Membership.SequencerMembership membership;
}

struct StorageConfig {
  1: StorageAttributeConfig attr_conf;
  2: Membership.StorageMembership membership;
}

struct ScopeReplication {
  1: u8 scope;
  2: u8 replication_factor;
}

struct ReplicationProperty {
  1: list<ScopeReplication> scopes;
}

struct MetaDataLogsReplication {
  1: u64 version;
  2: ReplicationProperty replication;
}

struct NodesConfiguration {
  1: u32 proto_version;
  2: u64 version;
  3: ServiceDiscoveryConfig service_discovery;
  4: SequencerConfig sequencer_config;
  5: StorageConfig storage_config;
  6: MetaDataLogsReplication metadata_logs_rep;
  7: u64 last_timestamp;
  // 8: u64 last_maintenance;
  // 9: string last_context;
}
