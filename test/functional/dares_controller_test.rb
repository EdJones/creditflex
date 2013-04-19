require 'test_helper'

class DaresControllerTest < ActionController::TestCase
  setup do
    @dare = dares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dare" do
    assert_difference('Dare.count') do
      post :create, dare: { challengee_email: @dare.challengee_email, challengee_twitid: @dare.challengee_twitid, message: @dare.message, user_id: @dare.user_id, wish_id: @dare.wish_id }
    end

    assert_redirected_to dare_path(assigns(:dare))
  end

  test "should show dare" do
    get :show, id: @dare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dare
    assert_response :success
  end

  test "should update dare" do
    put :update, id: @dare, dare: { challengee_email: @dare.challengee_email, challengee_twitid: @dare.challengee_twitid, message: @dare.message, user_id: @dare.user_id, wish_id: @dare.wish_id }
    assert_redirected_to dare_path(assigns(:dare))
  end

  test "should destroy dare" do
    assert_difference('Dare.count', -1) do
      delete :destroy, id: @dare
    end

    assert_redirected_to dares_path
  end
end
