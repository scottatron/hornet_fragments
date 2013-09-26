module Hornet
  module Fragments
    class Engine < ::Rails::Engine
      isolate_namespace Hornet::Fragments
    end
  end
end
