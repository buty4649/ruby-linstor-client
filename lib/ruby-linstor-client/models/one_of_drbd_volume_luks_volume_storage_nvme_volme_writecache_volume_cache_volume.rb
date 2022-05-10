module LinstorClient
  class OneOfDrbdVolumeLUKSVolumeStorageVolumeNVMEVolumeWritecacheVolume
    def self.build_from_hash(attributes)
      if attributes.key?(:drbd_volume_definition)
        DrbdVolume.build_from_hash(attributes)
      else
        StorageVolume.build_from_hash(attributes)
      end
    end
  end
end
