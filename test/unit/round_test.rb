require 'test_helper'

class RoundTest < ActiveSupport::TestCase
  fixtures :rounds

  setup do
    @rock = rounds(:rock)
  end

  test "should assign a computer move" do
    @rock.save
    assert_not_nil @rock
    assert_not_nil @rock.computer_move
  end

end
