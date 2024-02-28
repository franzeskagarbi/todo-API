require "test_helper"

class TodoListTest < ActiveSupport::TestCase
  def setup
    @todo_list = TodoList.new(title: "Example TodoList", description: "This is a sample todo list.")
  end

  test "should be valid" do
    assert @todo_list.valid?
  end

  test "title should be present" do
    @todo_list.title = ""
    assert_not @todo_list.valid?
  end

  test "description should be present" do
    @todo_list.description = ""
    assert_not @todo_list.valid?
  end

end
