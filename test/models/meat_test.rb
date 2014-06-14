require 'test_helper'

class MeatTest < ActiveSupport::TestCase
  test 'grill' do
    meat = Meat.new
    meat.grill
    assert meat.kind == 'grilled meat'
  end

  test 'boil' do
    meat = Meat.new
    meat.boil
    assert meat.kind = 'boilded meat'
  end
end
