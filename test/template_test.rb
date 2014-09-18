require 'test_helper'

if Rails.version >= "4.0.0"
  ControllerTest  = ActionDispatch::Integration
  IntegrationTest = ActionDispatch::IntegrationTest
else
  require 'json'
  ControllerTest  = ActionController::TestCase
  IntegrationTest = ActionController::IntegrationTest
end

class TemplateTest < IntegrationTest
  test "esnext files are served as plain javascript" do
    get "/assets/application.js"
    assert_match "function Point(x, y)", @response.body

    get "/assets/application-long-form.js"
    assert_match "function Point(x, y)", @response.body
  end
end
