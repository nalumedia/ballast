require 'test_helper'

class FinsControllerTest < ActionController::TestCase
  setup do
    @fin = fins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fin" do
    assert_difference('Fin.count') do
      post :create, fin: { ballast_price: @fin.ballast_price, base: @fin.base, customer_price: @fin.customer_price, description: @fin.description, height: @fin.height, name: @fin.name, type: @fin.type }
    end

    assert_redirected_to fin_path(assigns(:fin))
  end

  test "should show fin" do
    get :show, id: @fin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fin
    assert_response :success
  end

  test "should update fin" do
    patch :update, id: @fin, fin: { ballast_price: @fin.ballast_price, base: @fin.base, customer_price: @fin.customer_price, description: @fin.description, height: @fin.height, name: @fin.name, type: @fin.type }
    assert_redirected_to fin_path(assigns(:fin))
  end

  test "should destroy fin" do
    assert_difference('Fin.count', -1) do
      delete :destroy, id: @fin
    end

    assert_redirected_to fins_path
  end
end
