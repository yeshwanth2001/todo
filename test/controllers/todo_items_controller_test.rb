require 'test_helper'

class TodoItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_item = todo_items(:one)
  end

  test "should get index" do
    get todo_items_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_item_url
    assert_response :success
  end

  test "should create todo_item" do
    assert_difference('TodoItem.count') do
      post todo_items_url, params: { todo_item: { create: @todo_item.create, destroy: @todo_item.destroy, index: @todo_item.index, new: @todo_item.new, show: @todo_item.show, update: @todo_item.update } }
    end

    assert_redirected_to todo_item_url(TodoItem.last)
  end

  test "should show todo_item" do
    get todo_item_url(@todo_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_item_url(@todo_item)
    assert_response :success
  end

  test "should update todo_item" do
    patch todo_item_url(@todo_item), params: { todo_item: { create: @todo_item.create, destroy: @todo_item.destroy, index: @todo_item.index, new: @todo_item.new, show: @todo_item.show, update: @todo_item.update } }
    assert_redirected_to todo_item_url(@todo_item)
  end

  test "should destroy todo_item" do
    assert_difference('TodoItem.count', -1) do
      delete todo_item_url(@todo_item)
    end

    assert_redirected_to todo_items_url
  end
end
