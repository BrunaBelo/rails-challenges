require 'test_helper'

class TagTest < ActiveSupport::TestCase
  def setup
    @tag = Tag.new(name: 'Tag', color: '#F0FFFF')
  end

  test 'valid tag' do
    assert @tag.save
  end

  test 'invalid without name' do
    @tag.name = nil
    assert_not @tag.save, "Saved the tag without a name"
  end

  test 'invalid without color' do
    @tag.color = nil
    assert_not @tag.save, "Saved the tag without a color"
  end
end
