#-------        Sample App Gemfile --------------------------------------------------------------------
# -------       07.000-Gemfile.txt                                                          ---
# ---                                                                                       ---
# http://www.railstutorial.org/book
# http://ruby.railstutorial.org/chapters/updating-showing-and-deleting-users?version=4.0#code-final_gemfile
# http://yopefonic.wordpress.com/2011/06/23/multi-platform-ruby-development-with-bundler/
#
# --- https://devcenter.heroku.com/articles/ruby-versions
# --- http://bundler.io/v1.3/bundle_version.html
# --- Heroku wants the ruby version specified for the sample_app
#
# Hartl publishes his gemfile on-line where he keeps it upto date.
#
#--------Sample App Gemfile --Listing 11.66------------------------------------------------------#
#  Rails 4.2  Rails Tutorial 3rd Edition                                                         #
#    1) Listing 11.66: The final Gemfile for the sample application.                             #
#        https://www.railstutorial.org/book/user_microposts#code-final_gemfile                   #
#    2) Listing 3.2: A Gemfile for the sample app.                                               #
#        https://www.railstutorial.org/book/static_pages#code-gemfile_sample_app                 #
#------------------------------------------------------------------------------------------------#
#
# To make our gemfile compatible with Linux were using:
#   gem 'rb-inotify', '0.9.1'
#   gem 'libnotify',  '0.5.9'
#
# which work with rspec. Factory_girl is a fixtures library.   Spork is a Rails test preloaders
# which speeds up testing. Capybara allows testing of web pages by simulating HTTP requests as
# if someone was using a browser. Database_cleaner is used to initialize a database to a clean
# state during tests.

# +----  RUBY_PLATFORM.downcase.include ---------------------------------------------------------------+
# |  http://stackoverflow.com/questions/11565517/how-can-i-use-multiple-gemfiles-for-my-application    |
# |  http://www.dzone.com/snippets/determine-operating-system                                          |
# |  In a real-world environment some people might be developing on Linux and others on a MAC, and     |
# |  few if any using Windows.  The gemfile must be able to differentiate between environments.        |
# |  The Ruby_Platform statment can be used in the gemfile for this purpose to differentiate           |
# |  OS for specific gems.   That said, I never got it to work.                                        |
# +----------------------------------------------------------------------------------------------------+

# --- Hartl's sample_app gemfile
 source 'https://rubygems.org'
 ruby '2.1.2'
 gem 'rails', '4.2.0.beta2'

gem 'bcrypt',      '3.1.7'
gem 'faker',       '1.4.2'
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '3.8.0'
gem 'fog',         '1.23.0'
gem 'will_paginate', '3.0.7'            # helpers for rendering pagination links in Rails
#
# -- Twitters bootstrap --
gem 'bootstrap-will_paginate', '0.0.10' #  Hooks into will_paginate to format the html to match Twitter Bootstrap styling.
gem 'bootstrap-sass', '3.2.0.0'         # Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass

gem 'jquery-rails', '3.1.2'
gem 'turbolinks', '2.3.0'
gem 'jbuilder','2.1.3'
gem 'rails-html-sanitizer',    '1.0.1'
gem 'sdoc',                    '0.4.0', group: :doc
gem 'sass-rails',              '5.0.0.beta1'
gem 'uglifier', '2.5.3'
gem 'coffee-rails', '4.0.1'

# Linux specific gems
#--------------------
# http://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit
  gem 'libnotify',  '0.8.4'
  gem 'rb-inotify', '0.9.3'      # --  https://rubygems.org/gems/rb-inotify

group:production do
   gem 'pg',  '0.17.1'           # -- use Postgres --  as the database for Active Record
   gem 'rails_12factor', '0.0.2' # -- rails_12factor is used by Heroku to serve static assets such as images and stylesheets.
   gem 'unicorn', '4.8.3'        # -- Use unicorn as the app server and not the default of webrick.
end



# timezone information  --> http://rubydoc.info/gems/tzinfo/0.3.41/frames
gem 'tzinfo'           # https://rubygems.org/gems/tzinfo


group :development, :test do
      gem 'sqlite3',     '1.3.9'   # -- In  Listing 3.32 Hartl discusses eliminating sqlite3 from development
      gem 'byebug',      '3.4.0'
      gem 'web-console', '2.0.0.beta3'
      gem 'spring',      '1.1.3'
end

group :test do
      gem 'minitest-reporters', '1.0.5'
      gem 'mini_backtrace',     '0.1.3'
      gem 'guard-minitest',     '2.3.1'
#     gem 'minitest-rails-capybara'
end


