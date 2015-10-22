require 'test_helper'

class PriestProfilesControllerTest < ActionController::TestCase
  setup do
    @priest_profile = priest_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priest_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priest_profile" do
    assert_difference('PriestProfile.count') do
      post :create, priest_profile: { area: @priest_profile.area, brief: @priest_profile.brief, city: @priest_profile.city, description: @priest_profile.description, icon: @priest_profile.icon, name: @priest_profile.name, phone_pr: @priest_profile.phone_pr, phone_wrk: @priest_profile.phone_wrk, pin: @priest_profile.pin, religion: @priest_profile.religion, state: @priest_profile.state, street: @priest_profile.street }
    end

    assert_redirected_to priest_profile_path(assigns(:priest_profile))
  end

  test "should show priest_profile" do
    get :show, id: @priest_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @priest_profile
    assert_response :success
  end

  test "should update priest_profile" do
    patch :update, id: @priest_profile, priest_profile: { area: @priest_profile.area, brief: @priest_profile.brief, city: @priest_profile.city, description: @priest_profile.description, icon: @priest_profile.icon, name: @priest_profile.name, phone_pr: @priest_profile.phone_pr, phone_wrk: @priest_profile.phone_wrk, pin: @priest_profile.pin, religion: @priest_profile.religion, state: @priest_profile.state, street: @priest_profile.street }
    assert_redirected_to priest_profile_path(assigns(:priest_profile))
  end

  test "should destroy priest_profile" do
    assert_difference('PriestProfile.count', -1) do
      delete :destroy, id: @priest_profile
    end

    assert_redirected_to priest_profiles_path
  end
end
