require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "invalid_with_empty_attributes" do
     post = Post.new          #create an empty post model
     assert post.invalid?     # an empty post should be invalid
     assert post.errors[:title].any? # The title field should have validation errors
     assert post.errors[:body].any? # The body field should have validation errors
     assert post.errors[:author].any? # The author field should have validation errors
   end
   
   test "requires_body" do
   post = Post.create(:body => "this is an awesome post.")  #create an empty title model
     assert post.invalid?             # an empty title should be invalid
     assert post.errors[:title].any? # The title field should have validation errors
     assert post.errors[:author].any? # The author field should have validation errors
   end

   test "requires_title" do
   post = Post.create(:title => "My great post.")  #create an empty body model
     assert post.invalid?             # an empty body should be invalid
     assert post.errors[:body].any? # The title field should have validation errors
     assert post.errors[:author].any? # The author field should have validation errors
   end

   test "valid_with_title_body_and_author" do
   post = Post.create(:title => "My great post.",:body => "this is an awesome post.",
                      :author => "JoeBlow")       #create a valid post 
     assert post.valid?
   end

end
