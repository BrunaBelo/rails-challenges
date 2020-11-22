require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => 'user@gmail.com', :password => '123456', :password_confirmation => '123456')
    @tags = Tag.create([{ name: 'Editorial', color: '#4d94ff' },{ name: 'Q1 Goals', color: '#d147a3' }])
    @task = Task.create(:user => @user, :description => 'Quarterly newsletter', :date => '2020-11-20', :tags =>  [@tags[0]])
  end

  test 'valid taks' do
    assert @task.save
  end

  test 'valid without taks' do
    @task.tags = []
    assert @task.save
  end

  test 'valid many taks' do
    @task.tags = [@tags[0], @tags[1]]
    assert @task.save
  end

  test 'invalid without description' do
    @task.description = nil
    assert_not @task.save
  end

  test 'invalid without date' do
    @task.date = nil
    assert_not @task.save
  end

end
