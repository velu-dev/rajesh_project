require "application_system_test_case"

class CircularsTest < ApplicationSystemTestCase
  setup do
    @circular = circulars(:one)
  end

  test "visiting the index" do
    visit circulars_url
    assert_selector "h1", text: "Circulars"
  end

  test "creating a Circular" do
    visit circulars_url
    click_on "New Circular"

    fill_in "C date", with: @circular.c_date
    fill_in "Content", with: @circular.content
    fill_in "Desc", with: @circular.desc
    click_on "Create Circular"

    assert_text "Circular was successfully created"
    click_on "Back"
  end

  test "updating a Circular" do
    visit circulars_url
    click_on "Edit", match: :first

    fill_in "C date", with: @circular.c_date
    fill_in "Content", with: @circular.content
    fill_in "Desc", with: @circular.desc
    click_on "Update Circular"

    assert_text "Circular was successfully updated"
    click_on "Back"
  end

  test "destroying a Circular" do
    visit circulars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Circular was successfully destroyed"
  end
end
