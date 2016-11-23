require 'test_helper'

class AndressesControllerTest < ActionController::TestCase
  setup do
    @andress = andresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:andresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create andress" do
    assert_difference('Andress.count') do
      post :create, andress: { city: @andress.city, contact_id: @andress.contact_id, state: @andress.state, street: @andress.street }
    end

    assert_redirected_to andress_path(assigns(:andress))
  end

  test "should show andress" do
    get :show, id: @andress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @andress
    assert_response :success
  end

  test "should update andress" do
    patch :update, id: @andress, andress: { city: @andress.city, contact_id: @andress.contact_id, state: @andress.state, street: @andress.street }
    assert_redirected_to andress_path(assigns(:andress))
  end

  test "should destroy andress" do
    assert_difference('Andress.count', -1) do
      delete :destroy, id: @andress
    end

    assert_redirected_to andresses_path
  end
end
