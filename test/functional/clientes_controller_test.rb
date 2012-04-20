require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellidos: @cliente.apellidos, celular: @cliente.celular, dni: @cliente.dni, fecha_nacimiento: @cliente.fecha_nacimiento, nombres: @cliente.nombres, origen_nombre_mama: @cliente.origen_nombre_mama, ultima_historia: @cliente.ultima_historia }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    put :update, id: @cliente, cliente: { apellidos: @cliente.apellidos, celular: @cliente.celular, dni: @cliente.dni, fecha_nacimiento: @cliente.fecha_nacimiento, nombres: @cliente.nombres, origen_nombre_mama: @cliente.origen_nombre_mama, ultima_historia: @cliente.ultima_historia }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
