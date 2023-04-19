#!/bin/bash
yarn build
yarn build:css
RAILS_ENV=production rails assets:clobber
RAILS_ENV=production rails assets:precompile
