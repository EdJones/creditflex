require 'test_helper'

class ProposalTypesControllerTest < ActionController::TestCase
  setup do
    @proposal_type = proposal_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposal_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal_type" do
    assert_difference('ProposalType.count') do
      post :create, proposal_type: @proposal_type.attributes
    end

    assert_redirected_to proposal_type_path(assigns(:proposal_type))
  end

  test "should show proposal_type" do
    get :show, id: @proposal_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal_type.to_param
    assert_response :success
  end

  test "should update proposal_type" do
    put :update, id: @proposal_type.to_param, proposal_type: @proposal_type.attributes
    assert_redirected_to proposal_type_path(assigns(:proposal_type))
  end

  test "should destroy proposal_type" do
    assert_difference('ProposalType.count', -1) do
      delete :destroy, id: @proposal_type.to_param
    end

    assert_redirected_to proposal_types_path
  end
end
