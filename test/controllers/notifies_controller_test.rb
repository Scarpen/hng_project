require 'test_helper'

class NotifiesControllerTest < ActionController::TestCase
  setup do
    @notify = notifies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notifies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notify" do
    assert_difference('Notify.count') do
      post :create, notify: { description: @notify.description, title: @notify.title, user_id: @notify.user_id }
    end

    assert_redirected_to notify_path(assigns(:notify))
  end

  test "should show notify" do
    get :show, id: @notify
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notify
    assert_response :success
  end

  test "should update notify" do
    patch :update, id: @notify, notify: { description: @notify.description, title: @notify.title, user_id: @notify.user_id }
    assert_redirected_to notify_path(assigns(:notify))
  end

  test "should destroy notify" do
    assert_difference('Notify.count', -1) do
      delete :destroy, id: @notify
    end

    assert_redirected_to notifies_path
  end
end
