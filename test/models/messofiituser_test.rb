require 'test_helper'

class MessofiituserTest< ActiveSupport::TestCase
  
  def setup
    @messofiituser= Messofiituser.new(messusername: "dhruv", email: "dhruv.agrawal.mat14@itbhu.ac.in")
  
  end
  
  
  test "messofiituser should be valid" do
    assert @messofiituser.valid?
    
  end
  
  test "messusername should be present" do
    @messofiituser.messusername=""
    assert_not @messofiituser.valid?
    
  end
  
  test "messusername should not be too long" do
    @messofiituser.messusername="a"*41  
    assert_not @messofiituser.valid?
    
  end
  
  test "messusername should not be too short" do
    @messofiituser.messusername="aa"
    assert_not @messofiituser.valid?
    
  end
  
  test "email should be present" do
    @messofiituser.email=""
    assert_not @messofiituser.valid?
    
  end
  
  test "email length should be within bounds" do
    @messofiituser.email="a"*101 + "@emample.com"
    assert_not @messofiituser.valid?
  end
  
  test "email address should be unique" do
    dup_messofiituser=@messofiituser.dup
    dup_messofiituser.email=@messofiituser.email.upcase
    @messofiituser.save
    assert_not dup_messofiituser.valid?
    
    
  end
  
  test "email validation should accept valid addresses" do
    valid_addresses=%w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eem.au laura+joe@monk.cm]
    valid_addresses.each do |va|
      @messofiituser.email = va
      assert @messofiituser.valid?, '#{va.inspect} should be valid'
    end
     
    
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses=%w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
    invalid_addresses.each do |ia|
      @messofiituser.email= ia
      assert_not @messofiituser.valid?, '#{ia.inspect} should be invalid'
    end
    
    
  end
  
end