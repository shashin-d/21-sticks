require "test_helper"
require 'capybara/rails'
require 'capybara/minitest'

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  teardown do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  # describe "blogs page", type: :feature do
  test "should render sticks home page" do
    visit '/'
    assert page.status_code == 200
  end

end