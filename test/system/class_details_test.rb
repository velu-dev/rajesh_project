require "application_system_test_case"

class ClassDetailsTest < ApplicationSystemTestCase
  setup do
    @class_detail = class_details(:one)
  end

  test "visiting the index" do
    visit class_details_url
    assert_selector "h1", text: "Class Details"
  end

  test "creating a Class detail" do
    visit class_details_url
    click_on "New Class Detail"

    fill_in "Class name", with: @class_detail.class_name
    fill_in "Description", with: @class_detail.description
    click_on "Create Class detail"

    assert_text "Class detail was successfully created"
    click_on "Back"
  end

  test "updating a Class detail" do
    visit class_details_url
    click_on "Edit", match: :first

    fill_in "Class name", with: @class_detail.class_name
    fill_in "Description", with: @class_detail.description
    click_on "Update Class detail"

    assert_text "Class detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Class detail" do
    visit class_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class detail was successfully destroyed"
  end
end
