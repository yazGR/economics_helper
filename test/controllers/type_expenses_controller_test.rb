require "test_helper"

class TypeExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_expense = type_expenses(:one)
  end

  test "should get index" do
    get type_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_type_expense_url
    assert_response :success
  end

  test "should create type_expense" do
    assert_difference('TypeExpense.count') do
      post type_expenses_url, params: { type_expense: { name: @type_expense.name } }
    end

    assert_redirected_to type_expense_url(TypeExpense.last)
  end

  test "should show type_expense" do
    get type_expense_url(@type_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_expense_url(@type_expense)
    assert_response :success
  end

  test "should update type_expense" do
    patch type_expense_url(@type_expense), params: { type_expense: { name: @type_expense.name } }
    assert_redirected_to type_expense_url(@type_expense)
  end

  test "should destroy type_expense" do
    assert_difference('TypeExpense.count', -1) do
      delete type_expense_url(@type_expense)
    end

    assert_redirected_to type_expenses_url
  end
end
