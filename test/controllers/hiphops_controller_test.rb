require "test_helper"

class HiphopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hiphop = hiphops(:one)
  end

  test "should get index" do
    get hiphops_url, as: :json
    assert_response :success
  end

  test "should create hiphop" do
    assert_difference("Hiphop.count") do
      post hiphops_url, params: { hiphop: { artist: @hiphop.artist, groups: @hiphop.groups, subgenres: @hiphop.subgenres } }, as: :json
    end

    assert_response :created
  end

  test "should show hiphop" do
    get hiphop_url(@hiphop), as: :json
    assert_response :success
  end

  test "should update hiphop" do
    patch hiphop_url(@hiphop), params: { hiphop: { artist: @hiphop.artist, groups: @hiphop.groups, subgenres: @hiphop.subgenres } }, as: :json
    assert_response :success
  end

  test "should destroy hiphop" do
    assert_difference("Hiphop.count", -1) do
      delete hiphop_url(@hiphop), as: :json
    end

    assert_response :no_content
  end
end
