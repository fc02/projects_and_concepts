require 'test_helper'

class WorkPackagesControllerTest < ActionController::TestCase
  setup do
    @work_package = work_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_package" do
    assert_difference('WorkPackage.count') do
      post :create, work_package: {  }
    end

    assert_redirected_to work_package_path(assigns(:work_package))
  end

  test "should show work_package" do
    get :show, id: @work_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_package
    assert_response :success
  end

  test "should update work_package" do
    patch :update, id: @work_package, work_package: {  }
    assert_redirected_to work_package_path(assigns(:work_package))
  end

  test "should destroy work_package" do
    assert_difference('WorkPackage.count', -1) do
      delete :destroy, id: @work_package
    end

    assert_redirected_to work_packages_path
  end
end
