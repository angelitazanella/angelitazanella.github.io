#!/bin/bash

#`bundle exec jekyll serve`
export JEKYLL_VERSION=pages
docker run --rm --volume="$PWD:/srv/jekyll:Z" -it jekyll/jekyll:$JEKYLL_VERSION bash
#  jekyll build
