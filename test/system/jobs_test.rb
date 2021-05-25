require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Dropoff address", with: @job.dropoff_address
    fill_in "Getter", with: @job.getter_id
    fill_in "Lat1", with: @job.lat1
    fill_in "Lat2", with: @job.lat2
    fill_in "Lon1", with: @job.lon1
    fill_in "Lon2", with: @job.lon2
    fill_in "Pickup address", with: @job.pickup_address
    fill_in "User", with: @job.user_id
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Dropoff address", with: @job.dropoff_address
    fill_in "Getter", with: @job.getter_id
    fill_in "Lat1", with: @job.lat1
    fill_in "Lat2", with: @job.lat2
    fill_in "Lon1", with: @job.lon1
    fill_in "Lon2", with: @job.lon2
    fill_in "Pickup address", with: @job.pickup_address
    fill_in "User", with: @job.user_id
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
