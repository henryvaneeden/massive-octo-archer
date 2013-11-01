maintainer "Henry van Eeden"
description "Will setup an nginx server for load balancing to goliath api servers"

depends "deploy"
depends "nginx"

recipe "ninja::install", "sets up the nginx with config to load balance goliath api servers"
