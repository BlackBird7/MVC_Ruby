require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_index_url
    assert_response :success
  end

  test "should get saludo" do
    get hello_saludo_url
    assert_response :success
  end

end
