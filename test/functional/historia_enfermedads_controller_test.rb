require 'test_helper'

class HistoriaEnfermedadsControllerTest < ActionController::TestCase
  setup do
    @historia_enfermedad = historia_enfermedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historia_enfermedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historia_enfermedad" do
    assert_difference('HistoriaEnfermedad.count') do
      post :create, historia_enfermedad: { enfermedad_id: @historia_enfermedad.enfermedad_id, historia_id: @historia_enfermedad.historia_id }
    end

    assert_redirected_to historia_enfermedad_path(assigns(:historia_enfermedad))
  end

  test "should show historia_enfermedad" do
    get :show, id: @historia_enfermedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historia_enfermedad
    assert_response :success
  end

  test "should update historia_enfermedad" do
    put :update, id: @historia_enfermedad, historia_enfermedad: { enfermedad_id: @historia_enfermedad.enfermedad_id, historia_id: @historia_enfermedad.historia_id }
    assert_redirected_to historia_enfermedad_path(assigns(:historia_enfermedad))
  end

  test "should destroy historia_enfermedad" do
    assert_difference('HistoriaEnfermedad.count', -1) do
      delete :destroy, id: @historia_enfermedad
    end

    assert_redirected_to historia_enfermedads_path
  end
end
