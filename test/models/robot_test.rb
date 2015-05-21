require_relative '../test_helper'

class RobotTest < Minitest::Test
  def test_assigns_attributes_correctly
    robot = Robot.new({ "name"       => "Chelsea",
                        "city" => "Denver",
                        "id"          => 1,
                        "state" => "CO",
                        "birthday" => "05/31/87",
                        "date_hired" => "02/09/15",
                        "department" => "Turing CTO" })
    assert_equal "Chelsea", robot.name
    assert_equal "Denver", robot.city
    assert_equal 1, robot.id
    assert_equal "CO", robot.state
    assert_equal "05/31/87", robot.birthday
    assert_equal "02/09/15", robot.date_hired
    assert_equal "Turing CTO", robot.department
  end
end
