require 'test_helper'

class RegistroOrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_orden = registro_ordens(:one)
  end

  test "should get index" do
    get registro_ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_orden_url
    assert_response :success
  end

  test "should create registro_orden" do
    assert_difference('RegistroOrden.count') do
      post registro_ordens_url, params: { registro_orden: { fecha: @registro_orden.fecha, numero_orden: @registro_orden.numero_orden } }
    end

    assert_redirected_to registro_orden_url(RegistroOrden.last)
  end

  test "should show registro_orden" do
    get registro_orden_url(@registro_orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_orden_url(@registro_orden)
    assert_response :success
  end

  test "should update registro_orden" do
    patch registro_orden_url(@registro_orden), params: { registro_orden: { fecha: @registro_orden.fecha, numero_orden: @registro_orden.numero_orden } }
    assert_redirected_to registro_orden_url(@registro_orden)
  end

  test "should destroy registro_orden" do
    assert_difference('RegistroOrden.count', -1) do
      delete registro_orden_url(@registro_orden)
    end

    assert_redirected_to registro_ordens_url
  end
end
