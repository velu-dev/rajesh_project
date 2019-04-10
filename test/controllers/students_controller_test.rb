require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get assignment" do
    get students_assignment_url
    assert_response :success
  end

  test "should get exam" do
    get students_exam_url
    assert_response :success
  end

  test "should get events" do
    get students_events_url
    assert_response :success
  end

end
