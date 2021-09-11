# learn.ruby.rails.docker

* Building a rails application environment using docker.

## Products(Rails application)

* ruby 3.0
* rails 6.1.4

## Requirement

* Installed docker
* Installed docker-compose

## Install

```shell
git clone git@github.com:yosuke-dev/learn.ruby.rails.docker.git rails-web
cd rails-web
docker-compose build --no-cache --force-rm app
docker-compose run --rm app rails new . --force --no-deps --database=mysql
docker-compose up -d
docker-compose run --rm app rails db:create
docker-compose run --rm app rails db:migrate
```

## Usage

* Start Container
    * `docker-compose up -d`
* Stop Container
    * `docker-compose down`
* Access to RailsApplication
    * http://localhost
* Access to Adminer
    * http://localhost:9000
