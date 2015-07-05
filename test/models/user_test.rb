require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new( name: "Me",email: "me@gmail.com",
  								password: "lol123", password_confirmation: "lol123")	
  end


 	test "should validate user" do 
 		assert @user.valid?
 	end

 	test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
end
