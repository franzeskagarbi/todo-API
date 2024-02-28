require "test_helper"

class TodoItemTest < ActiveSupport::TestCase
  def setup
    @todo_list = TodoList.create(title: "Example TodoList", description: "This is a sample todo list.")
    @todo_item = @todo_list.todo_items.build(content: "Example TodoItem")
  end

  test "should be valid" do
    assert @todo_item.valid?
  end

  test "content should be present" do
    @todo_item.content = ""
    assert_not @todo_item.valid?
  end

  test "todo list should be present" do
    @todo_item.todo_list = nil
    assert_not @todo_item.valid?
  end
end
