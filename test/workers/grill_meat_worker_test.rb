require 'test_helper'

class GrillMeatWorkerTest < ActiveSupport::TestCase
  test 'grill' do
    GrillMeatWorker.perform_async(1)
    assert_equal 1, GrillMeatWorker.jobs.size
  end
end

