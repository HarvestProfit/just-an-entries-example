require 'test_helper'

class EntryItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:entry_one)
    @entry_item = entry_items(:entry_item_one)
  end

  test 'should get index' do
    get entry_entry_items_url(@entry)
    assert_response :success
  end

  test 'should get new' do
    get new_entry_entry_item_url(@entry)
    assert_response :success
  end

  test 'should create entry_item' do
    assert_difference('EntryItem.count') do
      post entry_entry_items_url(@entry), params: { entry_item: {
        type: 'EntryItems::Debit', amount: 10.00
      } }
    end

    assert_redirected_to entry_entry_items_url(@entry)
  end

  test 'should show entry_item' do
    get entry_entry_item_url(@entry, @entry_item)
    assert_response :success
  end

  test 'should get edit' do
    get edit_entry_entry_item_url(@entry, @entry_item)
    assert_response :success
  end

  test 'should update entry_item' do
    patch entry_entry_item_url(@entry, @entry_item), params: { entry_item: { amount: 50.00 } }
    assert_redirected_to entry_entry_items_url(@entry)
  end

  test 'should destroy entry_item' do
    assert_difference('EntryItem.count', -1) do
      delete entry_entry_item_url(@entry, @entry_item)
    end

    assert_redirected_to entry_entry_items_url(@entry)
  end
end
