require "application_system_test_case"

class TypeIncomesTest < ApplicationSystemTestCase
  setup do
    @type_income = type_incomes(:one)
  end

  test "visiting the index" do
    visit type_incomes_url
    assert_selector "h1", text: "Type Incomes"
  end

  test "creating a Type income" do
    visit type_incomes_url
    click_on "New Type Income"

    fill_in "Name", with: @type_income.name
    fill_in "User", with: @type_income.user_id
    click_on "Create Type income"

    assert_text "Type income was successfully created"
    click_on "Back"
  end

  test "updating a Type income" do
    visit type_incomes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_income.name
    fill_in "User", with: @type_income.user_id
    click_on "Update Type income"

    assert_text "Type income was successfully updated"
    click_on "Back"
  end

  test "destroying a Type income" do
    visit type_incomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type income was successfully destroyed"
  end
end
