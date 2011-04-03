module RSpec::Rails
  module RoutingExampleGroup
    class << self
      alias old_included included
      def included(mod)
        mod.class_eval{extend HyperShortcut::AdditionalMethods}
        old_included(mod)
      end
    end
  end
end
