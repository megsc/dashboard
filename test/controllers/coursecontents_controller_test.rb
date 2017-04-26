require 'test_helper'

class CoursecontentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coursecontent = coursecontents(:one)
  end

  #test "should get index" do
    #get coursecontents_url
    #assert_response :success
  #end

  test "should get new" do
    get new_coursecontent_url
    assert_response :success
  end

  #test "should create coursecontent" do
    #assert_difference('Coursecontent.count') do
      #post coursecontents_url, params: { coursecontent: { content_description: @coursecontent.content_description, content_name: @coursecontent.content_name, course_id: @coursecontent.course_id } }
    #end

    #assert_redirected_to coursecontent_url(Coursecontent.last)
  #end

  test "should show coursecontent" do
    get coursecontent_url(@coursecontent)
    assert_response :success
  end

  test "should get edit" do
    get edit_coursecontent_url(@coursecontent)
    assert_response :success
  end

  #test "should update coursecontent" do
    #patch coursecontent_url(@coursecontent), params: { coursecontent: { content_description: @coursecontent.content_description, content_name: @coursecontent.content_name, course_id: @coursecontent.course_id } }
    #assert_redirected_to coursecontent_url(@coursecontent)
  #end

  test "should destroy coursecontent" do
    assert_difference('Coursecontent.count', -1) do
      delete coursecontent_url(@coursecontent)
    end

    assert_redirected_to coursecontents_url
  end
end
