require 'test_helper'

class UserTest < Test::Unit::TestCase
  context "A user instance" do
    setup do
      @user = User.find(:first)
    end

    should "return its full name" do
      assert_equal @user.firstname + " " + @user.lastname, @user.fullname
    end
  end
end
