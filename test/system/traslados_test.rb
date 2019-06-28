require "application_system_test_case"

class TrasladosTest < ApplicationSystemTestCase
  setup do
    @traslado = traslados(:one)
  end

  test "visiting the index" do
    visit traslados_url
    assert_selector "h1", text: "Traslados"
  end

  test "creating a Traslado" do
    visit traslados_url
    click_on "New Traslado"

    fill_in "Direccion destino", with: @traslado.direccion_destino
    fill_in "Direccion origen", with: @traslado.direccion_origen
    fill_in "Empresa", with: @traslado.empresa_id
    fill_in "Fecha", with: @traslado.fecha
    fill_in "Price", with: @traslado.price
    fill_in "User", with: @traslado.user_id
    click_on "Create Traslado"

    assert_text "Traslado was successfully created"
    click_on "Back"
  end

  test "updating a Traslado" do
    visit traslados_url
    click_on "Edit", match: :first

    fill_in "Direccion destino", with: @traslado.direccion_destino
    fill_in "Direccion origen", with: @traslado.direccion_origen
    fill_in "Empresa", with: @traslado.empresa_id
    fill_in "Fecha", with: @traslado.fecha
    fill_in "Price", with: @traslado.price
    fill_in "User", with: @traslado.user_id
    click_on "Update Traslado"

    assert_text "Traslado was successfully updated"
    click_on "Back"
  end

  test "destroying a Traslado" do
    visit traslados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traslado was successfully destroyed"
  end
end
