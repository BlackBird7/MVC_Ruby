require 'test_helper'

class DetalleOrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_orden = detalle_ordens(:one)
  end

  test "should get index" do
    get detalle_ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_orden_url
    assert_response :success
  end

  test "should create detalle_orden" do
    assert_difference('DetalleOrden.count') do
      post detalle_ordens_url, params: { detalle_orden: { cantidad: @detalle_orden.cantidad, precio_venta: @detalle_orden.precio_venta } }
    end

    assert_redirected_to detalle_orden_url(DetalleOrden.last)
  end

  test "should show detalle_orden" do
    get detalle_orden_url(@detalle_orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_orden_url(@detalle_orden)
    assert_response :success
  end

  test "should update detalle_orden" do
    patch detalle_orden_url(@detalle_orden), params: { detalle_orden: { cantidad: @detalle_orden.cantidad, precio_venta: @detalle_orden.precio_venta } }
    assert_redirected_to detalle_orden_url(@detalle_orden)
  end

  test "should destroy detalle_orden" do
    assert_difference('DetalleOrden.count', -1) do
      delete detalle_orden_url(@detalle_orden)
    end

    assert_redirected_to detalle_ordens_url
  end
end
