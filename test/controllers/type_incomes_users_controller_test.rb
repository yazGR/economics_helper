require "test_helper"

class TypeIncomesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_incomes_user = type_incomes_users(:one)
  end

  test "should get index" do
    get type_incomes_users_url
    assert_response :success
  end

  test "should get new" do
    get new_type_incomes_user_url
    assert_response :success
  end

  test "should create type_incomes_user" do
    assert_difference('TypeIncomesUser.count') do
      post type_incomes_users_url, params: { type_incomes_user: { name: @type_incomes_user.name, user_id: @type_incomes_user.user_id } }
    end

    assert_redirected_to type_incomes_user_url(TypeIncomesUser.last)
  end

  test "should show type_incomes_user" do
    get type_incomes_user_url(@type_incomes_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_incomes_user_url(@type_incomes_user)
    assert_response :success
  end

  test "should update type_incomes_user" do
    patch type_incomes_user_url(@type_incomes_user), params: { type_incomes_user: { name: @type_incomes_user.name, user_id: @type_incomes_user.user_id } }
    assert_redirected_to type_incomes_user_url(@type_incomes_user)
  end

  test "should destroy type_incomes_user" do
    assert_difference('TypeIncomesUser.count', -1) do
      delete type_incomes_user_url(@type_incomes_user)
    end

    assert_redirected_to type_incomes_users_url
  end
end
