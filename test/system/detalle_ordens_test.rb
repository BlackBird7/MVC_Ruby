require "application_system_test_case"

class DetalleOrdensTest < ApplicationSystemTestCase
  setup do
    @detalle_orden = detalle_ordens(:one)
  end

  test "visiting the index" do
    visit detalle_ordens_url
    assert_selector "h1", text: "Detalle Ordens"
  end

  test "creating a Detalle orden" do
    visit detalle_ordens_url
    click_on "New Detalle Orden"

    fill_in "Cantidad", with: @detalle_orden.cantidad
    fill_in "Precio Venta", with: @detalle_orden.precio_venta
    click_on "Create Detalle orden"

    assert_text "Detalle orden was successfully created"
    click_on "Back"
  end

  test "updating a Detalle orden" do
    visit detalle_ordens_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detalle_orden.cantidad
    fill_in "Precio Venta", with: @detalle_orden.precio_venta
    click_on "Update Detalle orden"

    assert_text "Detalle orden was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle orden" do
    visit detalle_ordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle orden was successfully destroyed"
  end
end
