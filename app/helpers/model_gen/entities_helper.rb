module ModelGen
  module EntitiesHelper
    def available_data_types
      %w{binary boolean date datetime decimal float integer bigint references string text time timestamp}
    end
  end
end
