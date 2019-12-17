require "application_system_test_case"

class ComplexTasksTest < ApplicationSystemTestCase
  setup do
    @complex_task = complex_tasks(:one)
  end

  test "visiting the index" do
    visit complex_tasks_url
    assert_selector "h1", text: "Complex Tasks"
  end

  test "creating a Complex task" do
    visit complex_tasks_url
    click_on "New Complex Task"

    fill_in "Result", with: @complex_task.result
    fill_in "Title", with: @complex_task.title
    click_on "Create Complex task"

    assert_text "Complex task was successfully created"
    click_on "Back"
  end

  test "updating a Complex task" do
    visit complex_tasks_url
    click_on "Edit", match: :first

    fill_in "Result", with: @complex_task.result
    fill_in "Title", with: @complex_task.title
    click_on "Update Complex task"

    assert_text "Complex task was successfully updated"
    click_on "Back"
  end

  test "destroying a Complex task" do
    visit complex_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complex task was successfully destroyed"
  end
end
