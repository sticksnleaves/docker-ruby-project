# Supported tags and respective `Dockerfile` links

* [`2.4.3`, `2.4`, `latest` (2.4/Dockerfile)](https://github.com/sticksnleaves/docker-ruby-project/blob/e7356ad75361bf9f37e1c179fb49703ea429047f/Dockerfile)
* [`2.3.3`, `2.3` (2.3/Dockerfile)](https://github.com/sticksnleaves/docker-ruby-project/blob/bf0ef5aea56d41a338c4f8de018eedba9e2b6a4c/Dockerfile)

# What is this image?

`sticksnleaves/ruby-project` is a Docker image used for building
[Ruby](https://www.ruby-lang.org/en/) based projects at
[Sticksnleaves](http://www.sticksnleaves.com).

This image comes with `bundler` pre-installed.

# How to use this image

This image should primarily be used as a project's base image. When used with
`compose` this can be specified as the services `image`.

`/usr/src/app` is exposed at the images `WORKDIR`. All project files should
be contained within this directory. Most likely you want to mount this directory
as a local `volume`.

## Example `docker-compose.yml`

```
version: '2'
services:
  app:
    image: sticksnleaves/ruby-project:latest
    volumes:
      - .:/usr/src/app
```
