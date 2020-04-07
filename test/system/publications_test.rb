require "application_system_test_case"

class PublicationsTest < ApplicationSystemTestCase
  setup do
    @publication = publications(:one)
  end

  test "visiting the index" do
    visit publications_url
    assert_selector "h1", text: "Publications"
  end

  test "creating a Publication" do
    visit publications_url
    click_on "New Publication"

    fill_in "Comment", with: @publication.comment
    fill_in "Date", with: @publication.date
    fill_in "Link", with: @publication.link
    fill_in "Title", with: @publication.title
    click_on "Create Publication"

    assert_text "Publication was successfully created"
    click_on "Back"
  end

  test "updating a Publication" do
    visit publications_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @publication.comment
    fill_in "Date", with: @publication.date
    fill_in "Link", with: @publication.link
    fill_in "Title", with: @publication.title
    click_on "Update Publication"

    assert_text "Publication was successfully updated"
    click_on "Back"
  end

  test "destroying a Publication" do
    visit publications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publication was successfully destroyed"
  end
end
