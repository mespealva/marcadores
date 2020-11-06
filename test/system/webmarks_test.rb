require "application_system_test_case"

class WebmarksTest < ApplicationSystemTestCase
  setup do
    @webmark = webmarks(:one)
  end

  test "visiting the index" do
    visit webmarks_url
    assert_selector "h1", text: "Webmarks"
  end

  test "creating a Webmark" do
    visit webmarks_url
    click_on "New Webmark"

    fill_in "Cat", with: @webmark.cat_id
    fill_in "Type", with: @webmark.type_id
    fill_in "Url", with: @webmark.url
    click_on "Create Webmark"

    assert_text "Webmark was successfully created"
    click_on "Back"
  end

  test "updating a Webmark" do
    visit webmarks_url
    click_on "Edit", match: :first

    fill_in "Cat", with: @webmark.cat_id
    fill_in "Type", with: @webmark.type_id
    fill_in "Url", with: @webmark.url
    click_on "Update Webmark"

    assert_text "Webmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Webmark" do
    visit webmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webmark was successfully destroyed"
  end
end
