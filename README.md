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
* When your application gets the geolocation, ajax posts parameters. Latitude is in params[:lat], longitude is in params[:lng], and error is in params[:error].

Parameters are like this:
```
Started POST "/users/" for ::1 at 2016-04-05 21:05:45 +0900
Processing by UsersController#create as */*
   Parameters: {"lat"=>"35.68051", "lng"=>"139.7022992", "error"=>"", "authenticity_token"=>"hcw8jqFUfagr7MR6N5BswcQ+/Nl2d2Ch7YdkyUAsEU6+S4yzhKUEpVVwc0i+iAyfjyxgSUVh08LE3U/KE8zdcA=="}
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
