/**
 * Copyright (c) 2018-present, Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

include "/Workplace/logth/hslog/logdevice/admin/if/maintenance.thrift"


namespace hs Facebook.Logdevice.Maintenance

union MaintenanceDelta {
  1: list<maintenance.MaintenanceDefinition> apply_maintenances,
  2: maintenance.RemoveMaintenancesRequest remove_maintenances,
}
