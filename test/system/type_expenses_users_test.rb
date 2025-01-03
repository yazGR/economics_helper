require "application_system_test_case"

class TypeExpensesUsersTest < ApplicationSystemTestCase
  setup do
    @type_expenses_user = type_expenses_users(:one)
  end

  test "visiting the index" do
    visit type_expenses_users_url
    assert_selector "h1", text: "Type Expenses Users"
  end

  test "creating a Type expenses user" do
    visit type_expenses_users_url
    click_on "New Type Expenses User"

    fill_in "Name", with: @type_expenses_user.name
    fill_in "User", with: @type_expenses_user.user_id
    click_on "Create Type expenses user"

    assert_text "Type expenses user was successfully created"
    click_on "Back"
  end

  test "updating a Type expenses user" do
    visit type_expenses_users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_expenses_user.name
    fill_in "User", with: @type_expenses_user.user_id
    click_on "Update Type expenses user"

    assert_text "Type expenses user was successfully updated"
    click_on "Back"
  end

  test "destroying a Type expenses user" do
    visit type_expenses_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type expenses user was successfully destroyed"
  end
end
