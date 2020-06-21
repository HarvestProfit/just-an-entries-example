require "application_system_test_case"

class EntryItemsTest < ApplicationSystemTestCase
  setup do
    @entry_item = entry_items(:one)
  end

  test "visiting the index" do
    visit entry_items_url
    assert_selector "h1", text: "Entry Items"
  end

  test "creating a Entry item" do
    visit entry_items_url
    click_on "New Entry Item"

    click_on "Create Entry item"

    assert_text "Entry item was successfully created"
    click_on "Back"
  end

  test "updating a Entry item" do
    visit entry_items_url
    click_on "Edit", match: :first

    click_on "Update Entry item"

    assert_text "Entry item was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry item" do
    visit entry_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry item was successfully destroyed"
  end
end
