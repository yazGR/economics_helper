require "test_helper"

class TypeIncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_income = type_incomes(:one)
  end

  test "should get index" do
    get type_incomes_url
    assert_response :success
  end

  test "should get new" do
    get new_type_income_url
    assert_response :success
  end

  test "should create type_income" do
    assert_difference('TypeIncome.count') do
      post type_incomes_url, params: { type_income: { name: @type_income.name, user_id: @type_income.user_id } }
    end

    assert_redirected_to type_income_url(TypeIncome.last)
  end

  test "should show type_income" do
    get type_income_url(@type_income)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_income_url(@type_income)
    assert_response :success
  end

  test "should update type_income" do
    patch type_income_url(@type_income), params: { type_income: { name: @type_income.name, user_id: @type_income.user_id } }
    assert_redirected_to type_income_url(@type_income)
  end

  test "should destroy type_income" do
    assert_difference('TypeIncome.count', -1) do
      delete type_income_url(@type_income)
    end

    assert_redirected_to type_incomes_url
  end
end
