module GeoRails
  module GetGeo
    def render_geo(url = {}, high_accuracy = false, timeout = 8000, maximum_age = 2000, watch = false)
      render_url = self.controller_name + "/" 
      render_url += url[:url][:action] unless url[:url][:action].nil?
      render partial: "/geo/get_geo", locals: {url: render_url, high_accuracy: high_accuracy, timeout: timeout, maximum_age: maximum_age, watch: watch}
    end
  end
end
