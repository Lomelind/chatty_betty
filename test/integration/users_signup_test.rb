require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup" do
  	get signup_path
  	assert_no_difference 'User.count' do
  		post users_path, user: {name: "",
  			email:"lol@mail.com",
  			password: "foo",
  			password_confirmation: "foobar"}
  		end
  		assert_template 'users/new'
  end
end
