require "application_system_test_case"

class RegistroOrdensTest < ApplicationSystemTestCase
  setup do
    @registro_orden = registro_ordens(:one)
  end

  test "visiting the index" do
    visit registro_ordens_url
    assert_selector "h1", text: "Registro Ordens"
  end

  test "creating a Registro orden" do
    visit registro_ordens_url
    click_on "New Registro Orden"

    fill_in "Fecha", with: @registro_orden.fecha
    fill_in "Numero Orden", with: @registro_orden.numero_orden
    click_on "Create Registro orden"

    assert_text "Registro orden was successfully created"
    click_on "Back"
  end

  test "updating a Registro orden" do
    visit registro_ordens_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @registro_orden.fecha
    fill_in "Numero Orden", with: @registro_orden.numero_orden
    click_on "Update Registro orden"

    assert_text "Registro orden was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro orden" do
    visit registro_ordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro orden was successfully destroyed"
  end
end
