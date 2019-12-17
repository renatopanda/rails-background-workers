require 'test_helper'

class ComplexTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complex_task = complex_tasks(:one)
  end

  test "should get index" do
    get complex_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_complex_task_url
    assert_response :success
  end

  test "should create complex_task" do
    assert_difference('ComplexTask.count') do
      post complex_tasks_url, params: { complex_task: { result: @complex_task.result, title: @complex_task.title } }
    end

    assert_redirected_to complex_task_url(ComplexTask.last)
  end

  test "should show complex_task" do
    get complex_task_url(@complex_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_complex_task_url(@complex_task)
    assert_response :success
  end

  test "should update complex_task" do
    patch complex_task_url(@complex_task), params: { complex_task: { result: @complex_task.result, title: @complex_task.title } }
    assert_redirected_to complex_task_url(@complex_task)
  end

  test "should destroy complex_task" do
    assert_difference('ComplexTask.count', -1) do
      delete complex_task_url(@complex_task)
    end

    assert_redirected_to complex_tasks_url
  end
end
