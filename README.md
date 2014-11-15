raw-sinatra-boilerplate [![Build Status](https://travis-ci.org/agerwick/raw-sinatra-boilerplate.svg?branch=master)](https://travis-ci.org/agerwick/raw-sinatra-boilerplate) [![Dependency Status](https://gemnasium.com/agerwick/raw-sinatra-boilerplate.svg)](https://gemnasium.com/agerwick/raw-sinatra-boilerplate)
=======================


Boilerplate using Sinatra and Haml, tested with Minitest and Capybara


How to install
--------------

Install rvm - see http://rvm.io

Change to the directory you want it installed in

Execute the following

    git clone git@github.com:agerwick/raw-sinatra-boilerplate.git .
    cd .  # in order to invoke rvm
    gem install bundler
    bundle


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
