require 'test_helper'

class WorkLogsControllerTest < ActionController::TestCase
  setup do
    @work_log = work_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_log" do
    assert_difference('WorkLog.count') do
      post :create, work_log: { actor_id: @work_log.actor_id, notes: @work_log.notes, time: @work_log.time, without: @work_log.without, work_id: @work_log.work_id, work_time: @work_log.work_time, zone: @work_log.zone }
    end

    assert_redirected_to work_log_path(assigns(:work_log))
  end

  test "should show work_log" do
    get :show, id: @work_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_log
    assert_response :success
  end

  test "should update work_log" do
    put :update, id: @work_log, work_log: { actor_id: @work_log.actor_id, notes: @work_log.notes, time: @work_log.time, without: @work_log.without, work_id: @work_log.work_id, work_time: @work_log.work_time, zone: @work_log.zone }
    assert_redirected_to work_log_path(assigns(:work_log))
  end

  test "should destroy work_log" do
    assert_difference('WorkLog.count', -1) do
      delete :destroy, id: @work_log
    end

    assert_redirected_to work_logs_path
  end
end
