![Logo](https://s3-eu-west-1.amazonaws.com/visup-misc/open-source/form-clerk/logo_wide_light.png)

# Form Clerk

A sample app to handle form submissions from static websites

## Usage

In your website(s), set the form POST url to `/s/` of FormClerk app. A new email will be dispatched to the address you've set during heroku setup (or `DESTINATION_MAILS` env variable) with all the parameters you've sent

## Setup

Just a damn button

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/visup/form-clerk)

E.g. if your app is called `myclerk.herokuapp.com` use `https://myclerk.herokuapp.com/s/` as the form endpoint.

> PS: for now it responds only as JSON, so use AJAX requests for form submits

## Heroku

Remember that heroku turns off your dyno after one hour of inactivity (use any website monitor to ping it)

Please also wait some minutes the first time you send form, this is beacuse of mandrill taking a while at the first email you send through them

## TODO

 - Handle direct POST
 - Filter source domains
 - Spam filters
 - Database of forms each with own configuration

## Contributing

Locally you should use [mailcatcher](http://mailcatcher.me/) to be able to see emails and then just run `rails server` to test the app

Improvements and suggestions are very welcome, just post an issue!