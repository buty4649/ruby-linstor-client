=begin
#Linstor REST API

#Linstor REST API V1  The V1 rest api of Linstor should stay compatible and only additions are made to the API, If there are breaking changes or redesigned a new major REST API version will be issued.  Server runs per default on port `3370` on `::` ipv6 and ipv4.  To change the bind address or port you can use the following linstor client commands: ``` linstor controller set-property REST/bindAddress 127.0.0.1 linstor controller set-property REST/port 8080 ```  After setting this properties restart the controller and the new values should be used.  Changelog:  * 1.5.0    - Added etcd.prefix to ControllerConfigDbEtcd parameters * 1.4.0    - Added promotion_score and may_promote to DrbdResource object    - Added /v1/error-reports DELETE method, to delete a range of error reports or single ones    - Added SSE (Server Sent Events) url /v1/events/drbd/promotion * 1.3.0    - Added /v1/view/snapshot-shippings * 1.2.0    - Added optional AutoSelectFilter to resource-group/spawn    - Added /v1/nodes/{node}/config, that allows you to get and set the satellite config    - Added /v1/sos-report to create bug reports you can send to linbit    - Added new fields to the ErrorReport object    - Added /v1/resource-definitions/{resource}/snapshot-shipping    - Allow to modify the resource group in Resource definitions    - Added createTimestamp to Resource and Snapshot    - Added default value (null) for AutoPlaceRequest's layer_list * 1.1.0    - Added /v1/view/snapshots for a faster all in one snapshot list    - Filter lists by properties:       - /v1/nodes       - /v1/resource-definitions       - /v1/resource-groups       - /v1/view/storage-pools       - /v1/view/resources * 1.0.16    - Added CacheResource and CacheVolume schemas    - AutSelectFilter arrays are now null per default * 1.0.15   - Added connections map to the DRBD resource layer data   - Added support for Openflex * 1.0.14   - Added /v1/controller/config, that gives you the controller config information * 1.0.13   - Fixed broken volume definition modify `flags` handling   - Added flags to volume groups (create/modify) * 1.0.12   - Added WritecacheResource and WritecacheVolume schemas.   - Removed support for swordfish   - Added `with_storage_pool` to PhysicalStorageCreate post request, allowing to create linstor storage pools too   - Added `gross` flag for volume-definition size   - Added flags to VolumeDefinitionModify (so that `gross` flag can be changed)   - Added query-max-volume-size to resource-groups * 1.0.11   - Added /v1/physical-storage endpoint, that lets you query and create lvm/zfs pools   - Extended Node with list of supported providers and layers as well as lists of reasons for     unsupported providers and layers * 1.0.10   - Added `reports` array field to Volume object, contains ApiCallRcs for problems   - Changed `ResourceDefinitions` can now include `VolumeDefinitions` in `volume_definitions` field   - Added various filter query parameters * 1.0.9   - Added supports_snapshots to StoragePool * 1.0.8   - Added /v1/resource-groups   - Added /v1/resource-groups/{rscgrp}/volume-groups   - Moved AutoSelectFilter::place_count default indirectly to create resource implementation   - Added diskless_on_remaining to AutoSelectFilter   - Changed /v1/view/resources return type to ResourceWithVolumes     ResourceWithVolumes is now a child type of Resource (removed volumes from Resource) * 1.0.7   - Added ext_meta_stor_pool to DrbdVolume   - Added is_active field to the NetInterface type * 1.0.6   - Added /v1/resource-definitions/{rscName}/resources/{nodeName}/volumes/{vlmnr} PUT * 1.0.5   - Added `reports` field to StoragePool object * 1.0.4   - Added /v1/view/storage-pools overview path   - Added uuid fields for objects * 1.0.3   - Added /v1/view/resources overview path   - documentation schema extraction * 1.0.2   - Added /v1/storage-pool-definitions object path   - added NVME layer object type * 1.0.1   - Documentation review and updates   - no functional changes * 1.0.0   - Initial REST API v1 

The version of the OpenAPI document: 1.5.0
Contact: rene.peinthor@linbit.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LinstorClient::ControllerConfigDbEtcd
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinstorClient::ControllerConfigDbEtcd do
  let(:instance) { LinstorClient::ControllerConfigDbEtcd.new }

  describe 'test an instance of ControllerConfigDbEtcd' do
    it 'should create an instance of ControllerConfigDbEtcd' do
      expect(instance).to be_instance_of(LinstorClient::ControllerConfigDbEtcd)
    end
  end
  describe 'test attribute "operations_per_transaction"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "prefix"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
