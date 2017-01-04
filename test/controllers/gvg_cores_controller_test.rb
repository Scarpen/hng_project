require 'test_helper'

class GvgCoresControllerTest < ActionController::TestCase
  setup do
    @gvg_core = gvg_cores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gvg_cores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gvg_core" do
    assert_difference('GvgCore.count') do
      post :create, gvg_core: { avatar: @gvg_core.avatar, description: @gvg_core.description, name: @gvg_core.name, recruiting: @gvg_core.recruiting, recruiting_description: @gvg_core.recruiting_description, user_id: @gvg_core.user_id }
    end

    assert_redirected_to gvg_core_path(assigns(:gvg_core))
  end

  test "should show gvg_core" do
    get :show, id: @gvg_core
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gvg_core
    assert_response :success
  end

  test "should update gvg_core" do
    patch :update, id: @gvg_core, gvg_core: { avatar: @gvg_core.avatar, description: @gvg_core.description, name: @gvg_core.name, recruiting: @gvg_core.recruiting, recruiting_description: @gvg_core.recruiting_description, user_id: @gvg_core.user_id }
    assert_redirected_to gvg_core_path(assigns(:gvg_core))
  end

  test "should destroy gvg_core" do
    assert_difference('GvgCore.count', -1) do
      delete :destroy, id: @gvg_core
    end

    assert_redirected_to gvg_cores_path
  end
end
