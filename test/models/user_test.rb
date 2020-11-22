require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => 'user@gmail.com', :password => '123456', :password_confirmation => '123456')
  end

  test 'valid user' do
    assert @user.save
  end

  test 'invalid without email' do
    @user.email = nil
    assert_not @user.save, 'Saved the user without a email'
  end

  test 'invalid without password' do
    @user.password = nil
    assert_not @user.save, 'Saved the user without a password'
  end

  test 'invalid without password_confirmation' do
    @user.password_confirmation = nil
    assert_not @user.save, 'Saved the user without a password_confirmation'
  end

  test 'invalid it is not the same password' do
    @user.password_confirmation = "654321"
    assert_not @user.save, 'Saved the user with incorrect password_confirmation'
  end
end
