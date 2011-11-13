require 'test_helper'

class ImportersControllerTest < ActionController::TestCase
  setup do
    @importer = importers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:importers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create importer" do
    assert_difference('Importer.count') do
      post :create, importer: @importer.attributes
    end

    assert_redirected_to importer_path(assigns(:importer))
  end

  test "should show importer" do
    get :show, id: @importer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @importer.to_param
    assert_response :success
  end

  test "should update importer" do
    put :update, id: @importer.to_param, importer: @importer.attributes
    assert_redirected_to importer_path(assigns(:importer))
  end

  test "should destroy importer" do
    assert_difference('Importer.count', -1) do
      delete :destroy, id: @importer.to_param
    end

    assert_redirected_to importers_path
  end
end
