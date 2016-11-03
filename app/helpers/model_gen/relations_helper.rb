module ModelGen
  module RelationsHelper
    def available_relation_types
      %w{has_many has_one has_and_belongs_to_many}
    end
  end
end
