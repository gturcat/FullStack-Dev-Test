require "test_helper"

class PanelTest < ActiveSupport::TestCase
   def setup
    @panel = panels(:one)
    @panel.pvmes_declaration = PvmesDeclaration.new
  end

  test 'should be valid' do
    assert @panel.valid?
  end

  test 'code should be present' do
    @panel.code = nil
    assert_not @panel.valid?
    assert_includes @panel.errors[:code], "can't be blank"
  end

  test 'code should be an integer' do
    @panel.code = 'abc'
    assert_not @panel.valid?
    assert_includes @panel.errors[:code], 'is not a number'
  end

  test 'code should have a length of 6' do
    @panel.code = 12345
    assert_not @panel.valid?
    assert_includes @panel.errors[:code], 'is the wrong length (should be 6 characters)'
  end

  test 'should belong to pvmes_declaration' do
    assert_instance_of PvmesDeclaration, @panel.pvmes_declaration
  end
end
