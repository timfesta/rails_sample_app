require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
    	@user = User.new(name: "Example User", email: "user@example.com")
  	end

	test "should be valid" do
	    assert @user.valid?
	end

    test "name should be present" do
	    @user.name = "     "
	    assert_not @user.valid?
  	end

  	test "name should be present" do
  		@user.email = "    "
  		assert_not @user.valid?
  	end

  	test "name should not be to long" do
  		@user.name = "a" * 51
  		assert_not @user.valid?
  	end

  	test "name should not be to long" do
  		@user.email = "a" * 244
  		assert_not @user.valid?
  	end

  	test "validation should accept valid emails" do
  		valid_addresses = %w[user@example.com USER@example.com U_ser@example.com first.last@example.co.jp first+last@example.cn.]

  		valid_addresses.each do |address|
  			@user.email = valid_address		
  			assert @user.valid?, "#{valid_address.inspect} should be valid"
  		end
  	end


end
