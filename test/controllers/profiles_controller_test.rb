require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { address_city: @profile.address_city, address_country: @profile.address_country, address_full: @profile.address_full, campaing_id: @profile.campaing_id, company: @profile.company, company_gender: @profile.company_gender, email: @profile.email, first_name: @profile.first_name, gender: @profile.gender, image: @profile.image, last_name: @profile.last_name, linkedin_company_id: @profile.linkedin_company_id, linkedin_id: @profile.linkedin_id, linkedin_url: @profile.linkedin_url, name: @profile.name, source: @profile.source, title: @profile.title, vertical: @profile.vertical, website: @profile.website }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { address_city: @profile.address_city, address_country: @profile.address_country, address_full: @profile.address_full, campaing_id: @profile.campaing_id, company: @profile.company, company_gender: @profile.company_gender, email: @profile.email, first_name: @profile.first_name, gender: @profile.gender, image: @profile.image, last_name: @profile.last_name, linkedin_company_id: @profile.linkedin_company_id, linkedin_id: @profile.linkedin_id, linkedin_url: @profile.linkedin_url, name: @profile.name, source: @profile.source, title: @profile.title, vertical: @profile.vertical, website: @profile.website }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
