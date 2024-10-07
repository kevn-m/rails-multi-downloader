#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails db:create db:schema:load db:seed
bundle exec rails assets:precompile
bundle exec rails assets:clean

bundle exec rails db:migrate