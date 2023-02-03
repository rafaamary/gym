require "application_system_test_case"

class AcademiesTest < ApplicationSystemTestCase
  setup do
    @academy = academies(:one)
  end

  test "visiting the index" do
    visit academies_url
    assert_selector "h1", text: "Academies"
  end

  test "should create academy" do
    visit academies_url
    click_on "New academy"

    fill_in "Email", with: @academy.email
    fill_in "Name", with: @academy.name
    fill_in "Phone", with: @academy.phone
    click_on "Create Academy"

    assert_text "Academy was successfully created"
    click_on "Back"
  end

  test "should update Academy" do
    visit academy_url(@academy)
    click_on "Edit this academy", match: :first

    fill_in "Email", with: @academy.email
    fill_in "Name", with: @academy.name
    fill_in "Phone", with: @academy.phone
    click_on "Update Academy"

    assert_text "Academy was successfully updated"
    click_on "Back"
  end

  test "should destroy Academy" do
    visit academy_url(@academy)
    click_on "Destroy this academy", match: :first

    assert_text "Academy was successfully destroyed"
  end
end
