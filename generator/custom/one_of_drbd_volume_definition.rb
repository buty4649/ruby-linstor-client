module LinstorClient
  class OneOfDrbdVolumeDefinition
    def self.build_from_hash(attributes)
      DrbdVolumeDefinition.new.build_from_hash(attributes)
    end
  end
end
