require 'test_helper'

class Article365sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_365 = article_365s(:one)
  end

  test "should get index" do
    get article_365s_url
    assert_response :success
  end

  test "should get new" do
    get new_article_365_url
    assert_response :success
  end

  test "should create article_365" do
    assert_difference('Article365.count') do
      post article_365s_url, params: { article_365: { body: @article_365.body, title: @article_365.title } }
    end

    assert_redirected_to article_365_url(Article365.last)
  end

  test "should show article_365" do
    get article_365_url(@article_365)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_365_url(@article_365)
    assert_response :success
  end

  test "should update article_365" do
    patch article_365_url(@article_365), params: { article_365: { body: @article_365.body, title: @article_365.title } }
    assert_redirected_to article_365_url(@article_365)
  end

  test "should destroy article_365" do
    assert_difference('Article365.count', -1) do
      delete article_365_url(@article_365)
    end

    assert_redirected_to article_365s_url
  end
end
