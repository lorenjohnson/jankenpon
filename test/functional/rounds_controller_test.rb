require 'test_helper'

class RoundsControllerTest < ActionController::TestCase

  test "should have a session id" do
    get :index
    assert_response :success
    assert_not_empty request.session
  end

  test "should complete a round successfully" do
    post :create, round: { user_move: 'scissors' }
    assert_redirected_to rounds_path
  end

end
