require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    assert_difference 'User.count', 1 do
      post users_path, params: {user: { name:   "Example User",
                                        email:  "user@example.com",
                                        password:              "password", 
                                        password_confirmation: "password"} }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.include?("Welcome to the Sample App")
  end
end