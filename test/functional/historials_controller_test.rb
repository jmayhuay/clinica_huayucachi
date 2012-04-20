require 'test_helper'

class HistorialsControllerTest < ActionController::TestCase
  setup do
    @historial = historials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historial" do
    assert_difference('Historial.count') do
      post :create, historial: { cliente_id: @historial.cliente_id, fecha: @historial.fecha, id_externo: @historial.id_externo, medico_id: @historial.medico_id }
    end

    assert_redirected_to historial_path(assigns(:historial))
  end

  test "should show historial" do
    get :show, id: @historial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historial
    assert_response :success
  end

  test "should update historial" do
    put :update, id: @historial, historial: { cliente_id: @historial.cliente_id, fecha: @historial.fecha, id_externo: @historial.id_externo, medico_id: @historial.medico_id }
    assert_redirected_to historial_path(assigns(:historial))
  end

  test "should destroy historial" do
    assert_difference('Historial.count', -1) do
      delete :destroy, id: @historial
    end

    assert_redirected_to historials_path
  end
end
