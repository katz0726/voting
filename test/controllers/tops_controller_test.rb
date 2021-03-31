require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  setup do
  end

  test "一覧画面にアクセスできること" do
    get tops_url
    assert_response :success
  end

  test "詳細画面に遷移できること" do
    politics_tag = Tag.find_by(id: 1)
    get top_url(politics_tag)
    assert_response :success
  end
end
