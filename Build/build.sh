#!/bin/sh
#
# Site build script
#
# This file should contain all necessary steps to build the website. Include here 
# all necessary build steps (e.g. scripts minification, styles compilation etc).
#

case $@ in
  #
  # This is called at the end of `docker build` phase.
  #
  *--post-db-migration*)
    # Install some tools required by project
    ./flow package:activate Bucher.Maltnmore
    ;;

  #
  # This is called when container launches (and the script is called without param)
  #
  *)
    cd Build/
    bower install --allow-root
    npm install
    gulp build --env=Production
    ;;
esac