require File.dirname(__FILE__) + '/../test_helper'

class BallsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:balls)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ball
    assert_difference('Ball.count') do
      post :create, :ball => { }
    end

    assert_redirected_to ball_path(assigns(:ball))
  end

  def test_should_show_ball
    get :show, :id => balls(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => balls(:one).id
    assert_response :success
  end

  def test_should_update_ball
    put :update, :id => balls(:one).id, :ball => { }
    assert_redirected_to ball_path(assigns(:ball))
  end

  def test_should_destroy_ball
    assert_difference('Ball.count', -1) do
      delete :destroy, :id => balls(:one).id
    end

    assert_redirected_to balls_path
  end
end
