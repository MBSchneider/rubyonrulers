# rulers/test/test_application.rb

require_relative 'test_helper'
require 'best_quotes/app/controllers/quotes_controller'

class TestApp < Rulers::Application
  def get_controller_and_action(env)
    [QuotesController, 'a_quote']
  end
end


class RulersAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"
    assert last_response.ok?
    body = last_response.body
    assert body["There is nothing"]
  end
end
