require 'test_helper'

class ProposalStatusesControllerTest < ActionController::TestCase
  setup do
    @proposal_status = proposal_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposal_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal_status" do
    assert_difference('ProposalStatus.count') do
      post :create, proposal_status: @proposal_status.attributes
    end

    assert_redirected_to proposal_status_path(assigns(:proposal_status))
  end

  test "should show proposal_status" do
    get :show, id: @proposal_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal_status.to_param
    assert_response :success
  end

  test "should update proposal_status" do
    put :update, id: @proposal_status.to_param, proposal_status: @proposal_status.attributes
    assert_redirected_to proposal_status_path(assigns(:proposal_status))
  end

  test "should destroy proposal_status" do
    assert_difference('ProposalStatus.count', -1) do
      delete :destroy, id: @proposal_status.to_param
    end

    assert_redirected_to proposal_statuses_path
  end
end
