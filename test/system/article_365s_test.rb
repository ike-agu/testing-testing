require "application_system_test_case"

class Article365sTest < ApplicationSystemTestCase
  setup do
    @article_365 = article_365s(:one)
  end

  test "visiting the index" do
    visit article_365s_url
    assert_selector "h1", text: "Article365s"
  end

  test "creating a Article 365" do
    visit article_365s_url
    click_on "New Article365"

    fill_in "Body", with: @article_365.body
    fill_in "Title", with: @article_365.title
    click_on "Create Article 365"

    assert_text "Article 365 was successfully created"
    click_on "Back"
  end

  test "updating a Article 365" do
    visit article_365s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @article_365.body
    fill_in "Title", with: @article_365.title
    click_on "Update Article 365"

    assert_text "Article 365 was successfully updated"
    click_on "Back"
  end

  test "destroying a Article 365" do
    visit article_365s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article 365 was successfully destroyed"
  end
end
