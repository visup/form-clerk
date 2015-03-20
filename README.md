![Logo](https://s3-eu-west-1.amazonaws.com/visup-misc/open-source/form-clerk/logo_wide_light.png)

# Form Clerk

A sample app to handle form submissions from static websites

## Setup

Just a damn button

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploytemplate=https://github.com/visup/form-clerk)

Then, in your website(s), set the form POST url to `/s/` of your heroku app.

E.g. if your app is called `myclerk.herokuapp.com` use `https://myclerk.herokuapp.com/s/` as the form endpoint.

> PS: for now it responds only as JSON, so use AJAX requests for form submits

## TODO

 - Handle direct POST
 - Filter source domains
 - Spam filters
 - Database of forms each with own configuration

## Contributing

Locally you should use [matilcatcher](http://mailcatcher.me/) to be able to see emails and then just run `rails server` to test the app

Improvements and suggestions are very welcome, just post an issue!