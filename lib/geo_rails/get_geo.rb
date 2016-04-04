module GeoRails
  module GetGeo
    def render_geo(url = {})
      render_url = self.controller_name + "/" 
      render_url += url[:url][:action]  unless url[:url][:action].nil?
      render partial: "/geo/get_geo", locals: {url: render_url}
    end
  end
end
