require 'test_helper'

class CommentTest < ActiveSupport:: TestCase
  
  def setup
    @messofiituser=Messofiituser.create(messusername: "dhruv", email:"dhruv.190596@gmail.com")
    @comment=@messofiituser.comments.build(name: "Dhruv Agrawal", comments: "satvik mess can be considered as a good mess", review: "satvik: 4 star")
  end
  
  test "comment should be valid " do
    assert @comment.valid?
    
  end
  
  test "name should be present" do
    @comment.name=""
    assert_not @comment.valid?
    
  end
  
  test "name length should not be too long" do
    @comment.name="a"*101
    assert_not @comment.valid?
  end
  
  test "comments should be present" do
     @comment.comments=""
    assert_not @comment.valid?
    
  end
  
  test "messofiituser_id should be present" do
    @comment.messofiituser_id=nil
    assert_not @comment.valid?
  end
  
  test "review should be present" do
     @comment.review=""
    assert_not @comment.valid?
    
  end
end