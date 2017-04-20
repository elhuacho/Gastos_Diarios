require 'test_helper'

class GastosDiariosControllerTest < ActionController::TestCase
  setup do
    @gastos_diario = gastos_diarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gastos_diarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gastos_diario" do
    assert_difference('GastosDiario.count') do
      post :create, gastos_diario: { categoria: @gastos_diario.categoria, descripcion: @gastos_diario.descripcion, monto: @gastos_diario.monto }
    end

    assert_redirected_to gastos_diario_path(assigns(:gastos_diario))
  end

  test "should show gastos_diario" do
    get :show, id: @gastos_diario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gastos_diario
    assert_response :success
  end

  test "should update gastos_diario" do
    patch :update, id: @gastos_diario, gastos_diario: { categoria: @gastos_diario.categoria, descripcion: @gastos_diario.descripcion, monto: @gastos_diario.monto }
    assert_redirected_to gastos_diario_path(assigns(:gastos_diario))
  end

  test "should destroy gastos_diario" do
    assert_difference('GastosDiario.count', -1) do
      delete :destroy, id: @gastos_diario
    end

    assert_redirected_to gastos_diarios_path
  end
end
