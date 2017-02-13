require 'test_helper'

class PostToDatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_to_database = post_to_databases(:one)
  end

  test "should get index" do
    get post_to_databases_url
    assert_response :success
  end

  test "should get new" do
    get new_post_to_database_url
    assert_response :success
  end

  test "should create post_to_database" do
    assert_difference('PostToDatabase.count') do
      post post_to_databases_url, params: { post_to_database: { content: @post_to_database.content, name: @post_to_database.name, title: @post_to_database.title } }
    end

    assert_redirected_to post_to_database_url(PostToDatabase.last)
  end

  test "should show post_to_database" do
    get post_to_database_url(@post_to_database)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_to_database_url(@post_to_database)
    assert_response :success
  end

  test "should update post_to_database" do
    patch post_to_database_url(@post_to_database), params: { post_to_database: { content: @post_to_database.content, name: @post_to_database.name, title: @post_to_database.title } }
    assert_redirected_to post_to_database_url(@post_to_database)
  end

  test "should destroy post_to_database" do
    assert_difference('PostToDatabase.count', -1) do
      delete post_to_database_url(@post_to_database)
    end

    assert_redirected_to post_to_databases_url
  end
end
