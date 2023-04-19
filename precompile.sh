#!/bin/bash
rm app/assets/builds/* -f
yarn build
yarn build:css
RAILS_ENV=production rails assets:clobber
RAILS_ENV=production rails assets:precompile
