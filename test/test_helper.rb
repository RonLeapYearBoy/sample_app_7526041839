# ------------     Minitest_test_helper.txt      ----------------------------------- #
# ---               09.000-Test_Helper.rb                                        --- #
# ---------------------------------------------------------------------------------- #
# ---                                                                            --- #
# 3.7.1 MiniTest reporters                                                           #
# https://www.railstutorial.org/book/static_pages#sec-static_pages_exercises         #
#                                                                                    #
# Listing 3.40: Configuring the tests to show red and green.                         #
# https://www.railstutorial.org/book/static_pages#code-base_title_test               #
#                                                                                    #
#  gedit test/test_helper.rb                                                         #
#                                                                                    #
# test errors status in red when there are errors found                              #
#                                                                                    #
# ---------------------------------------------------------------------------------- #
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
