require 'test_helper'
require 'json'

class PostsControllerTest < ActionController::TestCase

  test "Should get valid list of posts" do
    get :index
    assert_response :success
    jdata = JSON.parse response.body
    assert_equal Post.count, jdata['data'].length
    assert_equal jdata['data'][0]['type'], 'posts'
  end
end