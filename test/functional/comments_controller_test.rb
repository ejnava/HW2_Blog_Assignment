require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

#index removed from comments controller
#  test "should get index" do
#    get :index
#    assert_response :success
#    assert_not_nil assigns(:comments)
#  end

#  test "should get new" do
#    get :new
#    assert_response :success
#  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post.id, comment: {author: @comment.author, body: @comment.body}
    end
    assert_redirected_to post_path(assigns(:post))
    assert_equal 'Comment was successfully created.', flash[:notice]
  end

# show removed from comment controller
#  test "should show comment" do
#    get :show, id: @comment
#    assert_response :success
#  end

#  test "should get edit" do
#    get :edit, id: @comment
#    assert_response :success
#  end

# update removed from comment controller
#  test "should update comment" do
#    put :update, id: @comment, comment: { author: @comment.author, body: @comment.body, post_id: @comment.post_id }
#    assert_redirected_to comment_path(assigns(:comment))
#  end

# destroy removed from comment controller
#  test "should destroy comment" do
#    assert_difference('Comment.count', -1) do
#      delete :destroy, id: @comment
#    end
#    assert_redirected_to comments_path
#  end

end