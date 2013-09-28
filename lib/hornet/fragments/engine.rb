module Hornet
  module Fragments
    class Engine < ::Rails::Engine
      isolate_namespace Hornet::Fragments
      
      config.generators do |g|
        g.test_framework :rspec, view_specs: false
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.assets false
        g.helper false
      end
      
    end
  end
end
