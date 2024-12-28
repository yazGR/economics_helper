require "application_system_test_case"

class TypeExpensesTest < ApplicationSystemTestCase
  setup do
    @type_expense = type_expenses(:one)
  end

  test "visiting the index" do
    visit type_expenses_url
    assert_selector "h1", text: "Type Expenses"
  end

  test "creating a Type expense" do
    visit type_expenses_url
    click_on "New Type Expense"

    fill_in "Name", with: @type_expense.name
    click_on "Create Type expense"

    assert_text "Type expense was successfully created"
    click_on "Back"
  end

  test "updating a Type expense" do
    visit type_expenses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_expense.name
    click_on "Update Type expense"

    assert_text "Type expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Type expense" do
    visit type_expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type expense was successfully destroyed"
  end
end
