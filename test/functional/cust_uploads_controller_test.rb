require 'test_helper'

class CustUploadsControllerTest < ActionController::TestCase
  setup do
    @cust_upload = cust_uploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cust_uploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cust_upload" do
    assert_difference('CustUpload.count') do
      post :create, cust_upload: { cust_file_url: @cust_upload.cust_file_url, name: @cust_upload.name }
    end

    assert_redirected_to cust_upload_path(assigns(:cust_upload))
  end

  test "should show cust_upload" do
    get :show, id: @cust_upload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cust_upload
    assert_response :success
  end

  test "should update cust_upload" do
    put :update, id: @cust_upload, cust_upload: { cust_file_url: @cust_upload.cust_file_url, name: @cust_upload.name }
    assert_redirected_to cust_upload_path(assigns(:cust_upload))
  end

  test "should destroy cust_upload" do
    assert_difference('CustUpload.count', -1) do
      delete :destroy, id: @cust_upload
    end

    assert_redirected_to cust_uploads_path
  end
end
