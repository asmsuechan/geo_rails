module GeoApi
  module GetGeo
    def render_geo(url = "/" + self.controller_name.to_s + "/" + self.action_name.to_s)
      render partial: "/geo/get_geo", locals: {url: url}
    end
  end
end
