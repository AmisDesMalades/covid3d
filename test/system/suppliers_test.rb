require "application_system_test_case"

class SuppliersTest < ApplicationSystemTestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "visiting the index" do
    visit suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "creating a Supplier" do
    visit suppliers_url
    click_on "New Supplier"

    check "Available" if @supplier.available
    fill_in "Full address", with: @supplier.full_address
    fill_in "Location", with: @supplier.location
    fill_in "Name", with: @supplier.name
    fill_in "Phone", with: @supplier.phone
    fill_in "Production capacity", with: @supplier.production_capacity
    fill_in "Type", with: @supplier.type
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "updating a Supplier" do
    visit suppliers_url
    click_on "Edit", match: :first

    check "Available" if @supplier.available
    fill_in "Full address", with: @supplier.full_address
    fill_in "Location", with: @supplier.location
    fill_in "Name", with: @supplier.name
    fill_in "Phone", with: @supplier.phone
    fill_in "Production capacity", with: @supplier.production_capacity
    fill_in "Type", with: @supplier.type
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier" do
    visit suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier was successfully destroyed"
  end
end
