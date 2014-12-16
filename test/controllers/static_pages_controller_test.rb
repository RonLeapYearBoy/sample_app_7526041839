# --------------static_pages_controller_test.rb ------------------------------------ #
# ---        12.000-Static-Pages-Controller-Test.txt                             --- #
# ---------------------------------------------------------------------------------- #
# ---                                                                            --- #
# 3.6 Exercises                                                                      #
# https://www.railstutorial.org/book/static_pages#sec-static_pages_exercises         #
#                                                                                    #
# Listing 3.38:  The Static Pages controller test with a base title.                 #
# https://www.railstutorial.org/book/static_pages#code-base_title_test               #
#                                                                                    #
#  gedit test/controllers/static_pages_controller_test.rb                            #
#                                                                                    #
# checks for the presence of a <title> tag containing the string                     #
# "Home | Ruby on Rails Tutorial Sample App"                                         #
# ---------------------------------------------------------------------------------- #

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
# ---------------------------------------------------------------------------------- #

