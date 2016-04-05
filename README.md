#GeoRails
GeoRails is able to use geolocation on Rails.

#Install

put this line in your Gemfile:

```
gem 'geo_rails'
```

and bundle install:

```
$ bundle install
```

#Usage
This gem is implemented as a view helper and uses Geolocation API of HTML5 to get the geolocation.

* Just call render_geo helper:
```
<%= render_geo %>
```
* When your application gets the geolocation, ajax posts parameters. Latitude is in params[:lat], longitude is in params[:lng].

 Parameters are like this:
```
Started POST "/users/" for ::1 at 2016-04-02 19:34:12 +0900
Processing by UsersController#create as */*
  Parameters: {"lat"=>"**.*******", "lng"=>"***.*******", "authenticity_token"=>"Pzg8jPzpvXsYS/gYU29AtRlso3g0FG9KAqRUgi4QxdgPdlsVidMLGQlJZeXsPOTyCIRicL9Ucm5KlPEpVlocUg=="}
```

* When you get an error, this is in params[:error].

 Parameters are like this:
```
Started POST "/users/" for ::1 at 2016-04-05 20:00:21 +0900
Processing by UsersController#create as */*
  Parameters: {"error"=>"unauthorized", "authenticity_token"=>"CdLcu3mClin6z8L03WYop63L54HbelNN4AwmyKGzkhMyVWyGXHPvJIRTdcZUfkj55tl7Eehs4C7JVg3L8lNeLQ=="}
```

* Please put this into \<head\> or the end of \<body\> as you can.


##URL option
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
