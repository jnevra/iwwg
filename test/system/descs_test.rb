require "application_system_test_case"

class DescsTest < ApplicationSystemTestCase
  setup do
    @desc = descs(:one)
  end

  test "visiting the index" do
    visit descs_url
    assert_selector "h1", text: "Descs"
  end

  test "creating a Desc" do
    visit descs_url
    click_on "New Desc"

    fill_in "Desc name", with: @desc.desc_name
    click_on "Create Desc"

    assert_text "Desc was successfully created"
    click_on "Back"
  end

  test "updating a Desc" do
    visit descs_url
    click_on "Edit", match: :first

    fill_in "Desc name", with: @desc.desc_name
    click_on "Update Desc"

    assert_text "Desc was successfully updated"
    click_on "Back"
  end

  test "destroying a Desc" do
    visit descs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desc was successfully destroyed"
  end
end
