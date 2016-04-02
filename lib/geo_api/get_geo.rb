module GeoApi
  module GetGeo
    #def render_geo(url = self.controller_name.to_s + "/" + self.action_name.to_s)
    def render_geo(url = {:controller => self.controller_name, :action => self.action_name})
      render_url = url[:controller] + "/" + url[:action]
      render partial: "/geo/get_geo", locals: {url: render_url}
    end
  end
end
