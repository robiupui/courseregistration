require 'test_helper'

class TextbooksControllerTest < ActionController::TestCase
  setup do
    @textbook = textbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textbook" do
    assert_difference('Textbook.count') do
      post :create, textbook: { isbn: @textbook.isbn, title: @textbook.title }
    end

    assert_redirected_to textbook_path(assigns(:textbook))
  end

  test "should show textbook" do
    get :show, id: @textbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textbook
    assert_response :success
  end

  test "should update textbook" do
    put :update, id: @textbook, textbook: { isbn: @textbook.isbn, title: @textbook.title }
    assert_redirected_to textbook_path(assigns(:textbook))
  end

  test "should destroy textbook" do
    assert_difference('Textbook.count', -1) do
      delete :destroy, id: @textbook
    end

    assert_redirected_to textbooks_path
  end
end
