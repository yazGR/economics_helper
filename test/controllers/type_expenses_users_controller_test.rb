require "test_helper"

class TypeExpensesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_expenses_user = type_expenses_users(:one)
  end

  test "should get index" do
    get type_expenses_users_url
    assert_response :success
  end

  test "should get new" do
    get new_type_expenses_user_url
    assert_response :success
  end

  test "should create type_expenses_user" do
    assert_difference('TypeExpensesUser.count') do
      post type_expenses_users_url, params: { type_expenses_user: { name: @type_expenses_user.name, user_id: @type_expenses_user.user_id } }
    end

    assert_redirected_to type_expenses_user_url(TypeExpensesUser.last)
  end

  test "should show type_expenses_user" do
    get type_expenses_user_url(@type_expenses_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_expenses_user_url(@type_expenses_user)
    assert_response :success
  end

  test "should update type_expenses_user" do
    patch type_expenses_user_url(@type_expenses_user), params: { type_expenses_user: { name: @type_expenses_user.name, user_id: @type_expenses_user.user_id } }
    assert_redirected_to type_expenses_user_url(@type_expenses_user)
  end

  test "should destroy type_expenses_user" do
    assert_difference('TypeExpensesUser.count', -1) do
      delete type_expenses_user_url(@type_expenses_user)
    end

    assert_redirected_to type_expenses_users_url
  end
end
