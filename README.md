raw-sinatra-boilerplate
=======================

Boilerplate using Sinatra and Haml, tested with Capybara


How to install
--------------

* Install rvm - see http://rvm.io
* Move to the directory you want it installed in
* Execute the following

    git clone git@github.com:agerwick/raw-sinatra-boilerplate.git .
    cd .  # in order to invoke rvm
    gem install bundler
    bundle


How to run application
----------------------

* Running in production mode

    rackup -p 8000

* Run in development mode, automatically reloading when a file is changed:

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
