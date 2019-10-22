raw-sinatra-boilerplate-mongodb
=======================

This repository is outdated, no longer serves a purpose, and is thus archived.

[![Build Status](https://travis-ci.org/agerwick/raw-sinatra-boilerplate-mongodb.svg?branch=master)](https://travis-ci.org/agerwick/raw-sinatra-boilerplate-mongodb)
[![Dependency Status](https://gemnasium.com/agerwick/raw-sinatra-boilerplate-mongodb.svg)](https://gemnasium.com/agerwick/raw-sinatra-boilerplate-mongodb)
[![Code Climate](https://codeclimate.com/github/agerwick/raw-sinatra-boilerplate/badges/gpa.svg)](https://codeclimate.com/github/agerwick/raw-
sinatra-boilerplate-mongodb)
[![Test Coverage](https://codeclimate.com/github/agerwick/raw-sinatra-boilerplate/badges/coverage.svg)](https://codeclimate.com/github/agerwick/raw-sinatra-boilerplate-mongodb)


Boilerplate using Sinatra, Haml, and Mongoid, tested with Minitest and Capybara


How to install
--------------

Install rvm - see http://rvm.io

Change to the directory you want it installed in

Execute the following

    git clone git@github.com:agerwick/raw-sinatra-boilerplate.git .
    cd .  # in order to invoke rvm
    gem install bundler
    # for development:
    bundle install
    # for production:
    bundle install --deployment --without=test


How to run application
----------------------

Running in production mode

    rackup -p 8000 -E production

Run in development mode, automatically reloading when a file is changed:

    shotgun -p 8000 config.ru

The application can be accessed at http://localhost:8000


How to run interactive ruby shell (irb)
---------------------------------------

    irb -r ./i.rb

This will also make all helpers available from irb


How to run tests
----------------

To list specific commands for each type of test

    rake

To run individual test

    ruby -I test "test/features/welcome_spec.rb"

To run irb in the test environment

    irb -r./test.i.rb


Continuous Integration
----------------------
CI is taken care of by Travis CI.

If you wish to skip CI on a minor commit (such as changes to the readme file), add [skip ci] to the commit message.

