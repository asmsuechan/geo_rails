#GeoApi
GeoApi is able to use geolocation on Rails.

#Install

put this line in your Gemfile:

```
gem 'geo_api'
```

and bundle install:

```
$ bundle install
```

#Usage
This gem is implemented as a view helper and uses Geolocation API of HTML5 to get the geolocation.

Just call render_geo helper:
```
<%= render_geo %>
```
When your application gets the geolocation, ajax posts parameters. Latitude is in params[:lat], longitude is in params[:lng].

Please put this into \<head\> or the end of \<body\> as you can.

##Options
* url option
By default, the parameters is posted at the accessed controller.

And you can control ahead to post by using url option.

for example:
```
<%= render_geo(:url => {:controller => "users", :action => "create"}) %>
```

then, parameters is posted at users#create.

#More information
More information about Geolocation API, check [here](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation/getCurrentPosition).

#License
This project rocks and uses MIT-LICENSE.
