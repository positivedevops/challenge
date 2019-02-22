# Our Devops Challenge

## The App: every body loves dogs!

The app is a simple [Sinatra](https://sinatrarb.com) based on dogs, great. It has three endpoints:

- [[https://localhost:9393/random]] which returns a random dog JSON object
- [[https://localhost:9393/breeds]] which returns a JSON object with every dog breed
- [https://localhost:9393/random_breed]] whcih returns a JSON object of a random dog of a specific breed

### Running our app localy

In order to run your our app locally you need to have installed:

- ruby 2.3.3
- bundler (usually comes with ruby)

Then you should run:

`bundle install`

Later on:

`export RACK_ENV=development; bundle exec shotgun config.ru`

To run the development environment of your app

### In order to run the application tests you should

```
bundle exec rspec specs/
```

## First Challenge: fix the app & tests

The `random_breed` endpoint is not working as expected, you should fix the code
and the test that covers this route.

Don't forget to complete the test in `specs/integration/base_spec`

## Second Challenge: put the app on CI

We are going to use [Travis](https://travis-ci.org/getting_started) to put our app in CI.
This document should be also useful: [[https://docs.travis-ci.com/user/languages/ruby/]]

## Third Challenge: Dockerize your app

We are going to dockerize our app so it can run inside a container, for that we'll need to create a Dockerfile and build the image. Most of the documentation you're going to need comes from the [Dockerfile doc](https://docs.docker.com/engine/reference/builder/)


By the end of the challenge you should be able to access the app endpoint:

```bash
  curl http://localhost:9393/random
  {"message":"{\"status\":\"success\",\"message\":\"https:\\/\\/images.dog.ceo\\/breeds\\/dalmatian\\/cooper2.jpg\"}"}
```

## Fourth Challenge: put the app on containers using CI

We are going to automate our build pipeline even further by creating a container image that runs our app.

For that we need to create an account in the Docker registry
https://hub.docker.com

## Fifth Challenge: run it on k8s!
