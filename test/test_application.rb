# naga/test/test_application.rb
require_relative 'test_helper'

class TestApp < Naga::Application
end

class NagaAppTest < Minitest::Test
  include Rack::Test::Methods
  
  def app
    TestApp.new
  end

  def test_request
    get '/'
    assert last_response.ok?
    assert last_response.content_type == 'text/html'
    body = last_response.body
    assert body['Hello']
  end
end
