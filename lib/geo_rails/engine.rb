require 'geo_rails/get_geo'
module GeoRails
  class Engine < ::Rails::Engine
    isolate_namespace GeoRails
    initializer 'geo_api.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include GeoRails::GetGeo
      end
    end
  end
end
