require 'geo_api/get_geo'
module GeoApi
  class Engine < ::Rails::Engine
    isolate_namespace GeoApi
    initializer 'geo_api.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include GeoApi::GetGeo
      end
    end
  end
end
