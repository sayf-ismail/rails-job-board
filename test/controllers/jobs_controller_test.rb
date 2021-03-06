require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { address1: @job.address1, address2: @job.address2, getter_id: @job.getter_id, lat1: @job.lat1, lat2: @job.lat2, long1: @job.long1, long2: @job.long2, user_id: @job.user_id } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { address1: @job.address1, address2: @job.address2, getter_id: @job.getter_id, lat1: @job.lat1, lat2: @job.lat2, long1: @job.long1, long2: @job.long2, user_id: @job.user_id } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
