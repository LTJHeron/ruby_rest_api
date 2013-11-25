require 'test_helper'

class ProxyImagesControllerTest < ActionController::TestCase
  setup do
    @proxy_image = proxy_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proxy_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proxy_image" do
    assert_difference('ProxyImage.count') do
      post :create, proxy_image: { content: @proxy_image.content, user_id: @proxy_image.user_id }
    end

    assert_redirected_to proxy_image_path(assigns(:proxy_image))
  end

  test "should show proxy_image" do
    get :show, id: @proxy_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proxy_image
    assert_response :success
  end

  test "should update proxy_image" do
    put :update, id: @proxy_image, proxy_image: { content: @proxy_image.content, user_id: @proxy_image.user_id }
    assert_redirected_to proxy_image_path(assigns(:proxy_image))
  end

  test "should destroy proxy_image" do
    assert_difference('ProxyImage.count', -1) do
      delete :destroy, id: @proxy_image
    end

    assert_redirected_to proxy_images_path
  end
end
